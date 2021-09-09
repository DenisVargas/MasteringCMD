:://////////////////////////////////////////////////////////////////////////////////////
::Operaciones IO Estándar: Create - Read - Write- Delete - Move - Rename
:://////////////////////////////////////////////////////////////////////////////////////

::Create - Se logra redirigiendo el output utilizando el filtro >
@echo off
echo "hello" > C:\Users\Denis\Desktop\new.txt

::Write - Usamos el mismo filtro >
::dir C:\dev > C:\Users\Denis\Desktop\new.txt

::Append - Utilizamos el filtro de doble redirección.
dir C:\dev >> C:\Users\Denis\Desktop\new.txt

::Read - usamo el bucle for
FOR /F "tokens=* delims=" %%x in (C:\Users\Denis\Desktop\new.txt) DO echo %%x
::El parámetro delims es utilizado para separar el texto en diferentes palabras.
Pause

::Delete Files Syntax: DEL [/P] [/F] [/S] [/Q] [/A[[:]attributes]] names
:: [/P] prompts confirmaion
:: [/F] Force delete of read-only files
:: [/S] Deletes specified files from all subdirectories.
:: [/Q] Quiet mode, do not ask if ok to delete on global wildcard
:: [/A] Selects files to delete based on attributes
:: Attributos: R - Read Only, S - System Files, H hiddenFiles, A Files ready for archiving - Prefix meaning not.
::Ejemplos:
del test.bat
del c:\test.bat
del c:\*.bat
:: El asterisco indica que queremos borrar todos los archivos bat en el directorio indicado.
del c:\?est.tmp
:: EL ? indica que se eliminará cualquier archivo que termine en est.tmp, como test.tmp

::Renaming - Usamos rem o rename. Syntax: RENAME [drive:][path][directoryname1 | filename1] [directoryname2 | filename2]
rename *.txt *.bak
:: Renombra todos los textos a archivos con la extensión .bak
rename "TESTA.txt" "TESTB.txt"

::Moving Files - Usamos: MOVE [/Y | /-Y] [drive:][path]filename1[,...] destination
:: [drive:][path]filename1 - La locacion del archivo que queremos mover.
:: destination - La nueva locacion del archivo.
:: [drive:][path]dirname1 - El directorio que queremos renombrar
:: dirname2 - El nuevo nombre del directorio
:: /Y - elimina el cuadro de dialogo que aparece cuando queremos sobreescribir un destino preexistente
:: /-Y - permite que el cuadro de dialogo antes mencionado, aparezca.
move c:\windows\temp\*.* c:\temp
:: Mueve todos los archivos de C:\windows\temp al directorio C:\temp
move new.txt, test.txt c:\example
:: Mueve new.txt y test.txt al directorio C:\example

:://////////////////////////////////////////////////////////////////////////////////////
::Folders: Create - List - Delete - Rename - Move
:://////////////////////////////////////////////////////////////////////////////////////

::Para crear carpetas utilizamos el comando [md] o [mkdir]
md test
md C:\test
md "Test A"
::Es posible crear directorios de manera recursiva:
mkdir \a\b\c

::Para listar carpetas utilizamos el comando [dir]
::Mas info en: https://www.tutorialspoint.com/batch_script/batch_script_listing_folder_contents.htm
dir *.exe
::Todos los archivos .exe
dir *.txt *.doc
::Archivos .txt y .doc al mismo tiempo
dir /ad
::Solo elementos en la carpeta actual
dir /s
::Lista todas las carpetas y subcarpetas del directorio actual.
dir /p
::Desplega una página a la vez
dir /w
::Despliega los archivos y carpetas de forma horizontal sin info adicional.
dir /s /w /p
::Carpetas y subcarpetas, formato ancho y una página a la vez.

::Delete: Utilizamos el comando [del]
::Mas info en https://www.tutorialspoint.com/batch_script/batch_script_deleting_folders.htm
del Example
del C:\Example
del Example1 , Example2

::Rename: Utilizamos el comando [ren]
ren Example Example1
ren C:\Example Example1

::Move: Utilizamos el comando [move]
::Mas info en https://www.tutorialspoint.com/batch_script/batch_script_moving_folders.htm
move *.* C:\Example
::Mueve todos los archivos del directorio actual a la carpeta "Example"
move *.txt C:\Example
::Mueve todos los archivos de texto del directorio actual a la carpeta "Example"
move C:\old\*.* C:\Example
::Mueve todos los archivos del directorio "old" a la carpeta "Example"