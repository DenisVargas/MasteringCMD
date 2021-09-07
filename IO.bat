::Create - Read - Write- Delete - Move - Rename --> Operaciones estándar
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