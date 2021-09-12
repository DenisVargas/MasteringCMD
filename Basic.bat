@echo off
rem Esto es un comentario. Significa remarks
:: Esto también es un comentario.
rem El simbolo > es un comando utilizado para redirigir el output de una operación a un archivo.
echo "El directorio para app data es %AppData%"

::Pipes: Redirige el output de un programa STDOUT a el input de otro programa STDIN utilizando el simbolo |
dir C:\ | sort
::Normalmente es útil combinarlo con las operaciones de redirección
dir C:\ | find "txt" > Alltext.txt
tasklist | find "notepad" > tasklist.txt
::También es posible utilizar varios comandos pipes.
dir c:\ /s /b | find "TXT" | more

rem hay 2 tipos de variables.
rem command line arguments
echo %1
echo %2
echo %3
rem variables normalitas. set /a variable-name=value
set yolo="valor de una variable"
echo %yolo%
rem si el output dice que echo está desactivado, significa que el valor es nulo
rem /A es utilizado para indicar números.
set /A a=350
set /A b=250
set /A c=%a%+%b%
echo %c%

rem DOS tiene scope Local y Global. Todas las variables son globales por defecto
rem Utilizamos SETLOCAL y ENDLOCAL para definir variables con scope temporales
rem Las variables globales se eliminan cuando se llama ENDLOCAL, EXIT o cuando la ejecucion alcanza EOE
rem Es preferible utilizar variables de entorno

::Operadores https://www.tutorialspoint.com/batch_script/batch_script_operators.htm
::Aritméticos: + - * / %
::Relacionales: EQU(equals) NEQ(notEquals) LSS(<) LEQ(<=) GTR(>) GEQ(>=)
::Logicos: AND OR NOT
::Asignación: += -= *= /= %=
::Bitwise: & | ^

::Aliases - DOSKEY [options] [macroname=[text]]
::Pueden crearse de la siguiente manera.
doskey dw = dir /w
::Pueden eliminarse asignandoles el valor nulo.
dw = 
::Para reemplazar un Alias, reasignamos el valor por uno nuevo.
doskey d = dir
d = dir /w
