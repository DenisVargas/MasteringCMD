::1. Para debuguear manten el echo activo eliminando la línea @echo off
::2. Redirecciona el output a un archivo log
test.bat > batch.log 2>&1
::3. Lee el output en el archivo log
::4. Chequea la línea anterior por cualquier error, como valores inesperados, comandos inválidos, switch(es).
::Presta especial atención a los valores de las variables de entorno.
::5. Corrige el error y repite el proceso hasta que todos los errores hayan desaparecido.

::Comandos complejos.
::Errores comunes tambien suelen aparecer en redirecciones de comandos, como FIND o FINDSTR anidados con strings de búsqueda incorrectos.
::A veces loops FOR /F
::1. Inserta un comando "check" antes de una linea que utiliza un comando complejo.
TYPE %Temp%.\apipaorg.reg
ECHO.================================================ TYPE %Temp%.\apipaorg.reg 
| FIND 
"[HKEY_LOCAL_MACHINE\System\CurrentControlSet\Services\TCPIP\Parameters\Interfaces\"
::2. Sigue el procedimiento para encontrar la fuente de los mensajes de error.
::3. Presta atención a la salida de los comandos simplificados: Es la salida tal cual se esperaba?

::SUBRUTINAS
::Suelen ser un dolor de huevos. 
::1. Añade una variable contador en el principio del script
SET Counter = 0
::2. Aumenta el contador cada vez que la subrutina es llamada
SET /A Counter+=1
::3. Inserta una linea justo después del incremento, conteniendo solo el comando SET, esto listará todas las variables de entorno y sus valores.
::4. Sigue el procedimiento para encontrar la fuente del mensaje de error.

::Versiones de Windows.
::Si la intención es distribuir los archivos batch a otras computadoras que puede o no correr la misma versión de windows, vamos a necesitar testear tus archivos batch en tantas versiones de windows posibles.
@ECHO OFF
:: Check for Windows NT 4 and later

IF NOT "%OS%"=="Windows_NT" GOTO DontRun
:: Check for Windows NT 4
VER | FIND "Windows NT" >NUL && GOTO DontRun
:: Check for Windows 2000
VER | FIND "Windows 2000" >NUL && GOTO DontRun
:: Place actual code here . . .
:: End of actual code . . .
EXIT

:DontRun
ECHO Sorry, this batch file was written for Windows XP and later versions only


::Logging
::Es posible mediante el redireccionamiento de la salida.
::Ejemplo
test.bat > testlog.txt 2> testerrors.txt
::Programa/Rutina Fuente > Redirección "normal" > Redirección "error"