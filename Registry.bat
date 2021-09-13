::https://www.tutorialspoint.com/batch_script/batch_script_registry.htm
::El registro contiene claves y valores. 
::Las claves son contenedores, similares a las carpetas. Pueden contener otras claves.
::Son referenciadas con una sintaxis similar a las rutas (utilizando / para indicar varios niveles).
::Los valores son objetos similares a los archivos.
::Operaciones comunes: Read - Add - Delete - Copy - Compare
@echo off

::Reading 
::REG QUERY [ROOT\]RegKey /v ValueName [/s] 
::REG QUERY [ROOT\]RegKey /ve --This returns the (default) value
REG QUERY HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Windows\
::En este ejemplo vamos a imprimir en pantalla la informacion del sistema.

::Adding - necesitas los privilegios elevados.
::REG ADD [ROOT\]RegKey /v ValueName [/t DataType] [/S Separator] [/d Data] [/f]
::REG ADD [ROOT\]RegKey /ve [/d Data] [/f]
REG ADD HKEY_CURRENT_USER\Console /v Test /d "Test Data"
::Locacion HKey... /v valor "Test" y el contenido es "Test Data". Tipo de dato no especificado: "Default"
REG QUERY HKEY_CURRENT_USER\Console /v Test
::Despliega el contenido del registro añadido previamente. Output:    Test REG_SZ Test Data

::Delete - Requiere privilegios elevados.
::Syntax: REG DELETE [ROOT\]RegKey /v ValueName [/f]
::Variation 1: REG DELETE [ROOT\]RegKey /ve [/f] - Elimina el valor por defecto
::Variation 2: REG DELETE [ROOT\]RegKey /va [/f] - Elimina todos los valores bajo la clave específicada.
::/F fuerza el borrado sin iniciar el mensaje "Value exists, overrite Y/N".
REG DELETE HKEY_CURRENT_USER\Console /v Test /f
::REG QUERY HKEY_CURRENT_USER\Console /v Test Si ejecutamos lo siguiente debería tirarnos un error.

::Copy - REG COPY [\\SourceMachine\][ROOT\]RegKey [\\DestMachine\][ROOT\]RegKey
::Requiere permisos elevados.
REG COPY HKEY_CURRENT_USER\Console HKEY_CURRENT_USER\Console\Test 
::Copia los contenidos en .../console a .../Console/Test dentro de la misma máquina.
REG QUERY HKEY_CURRENT_USER\Console\Test
::Chequea que haya funcionado.

::Compare   - REG COMPARE [ROOT\]RegKey [ROOT\]RegKey [/v ValueName] [Output] [/s]
::Variation - REG COMPARE [ROOT\]RegKey [ROOT\]RegKey [/ve] [Output] [/s]
::Where in Output − /od (only differences) /os (only matches) /oa (all) /on (no output).
REG COMPARE HKEY_CURRENT_USER\Console HKEY_CURRENT_USER\Console\Test
::    -Output-
::Result Compared: Identical 
::The operation completed successfully.

::Si se halla alguna diferencia el output sería algo como...
::< Value: HKEY_CURRENT_USER\Console EnableColorSelection REG_DWORD 0x0
::Result Compared: Different
::The operation completed successfully.
