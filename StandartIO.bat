::Hay 3 archivos universales para el input del teclado
::Standart in --> stdin - Input al programa/script -> index = 0
::Standart out --> stdout - output al display -> index = 1
::Standart Err --> stderr - errores al display -> index = 2

::Redirecting Output(Stdout and Stderr)
dir C:\ > list.txt
::Si anteponemos el index al simbolo > podemos indicar cual archivo estandar queremos redirigir
dir C:\ 2> list.txt
::Podemos combinar ambos bufferes utilizando el operador &
dir C:\ > lists.txt 2>&1
::Es posible suprimir el output de un programa utilizando el pseudo archivo NUL
dir C:\ > NUL

::Para trabajar con Stdin hay que usar un workaround.
::Redirigimos el stdin de la terminal llamado CON
TYPE CON > lists.txt
