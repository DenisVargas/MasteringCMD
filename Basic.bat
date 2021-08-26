@echo off
rem Esto es un comentario. Significa remarks
:: Esto también es un comentario.
rem El simbolo > es un comando utilizado para redirigir el output de una operación a un archivo.
echo "El directorio para app data es %AppData%"

rem hay 2 tipos de variables.
rem command line arguments
echo %1
echo %2
echo %3
rem si el output dice que echo está desactivado, significa que el valor es nulo

rem variables normalitas. set /a variable-name=value
set yolo="valor de una variable"
echo %yolo%

set /A a=350
set /A b=250
set /A c=%a%+%b%
echo %c%
rem /A es utilizado para indicar números. Se soportan la suma, resta, multiplicacion y divicion.

rem DOS tiene scope Local y Global. Todas las variables son globales por defecto
rem Utilizamos SETLOCAL y ENDLOCAL para definir variables con scope temporales
rem Las variables globales se eliminan cuando se llama ENDLOCAL, EXIT o cuando la ejecucion alcanza EOE
rem Es preferible utilizar variables de entorno