::Working with strings
@echo off
SETLOCAL
::Creating a string
set s = algun texto piola 
::Emty string
set a=
::Cheking for empty strings
if [%a%] == [] echo "La variable a esta vacía"
::Interpolacion - Es la mescla de números y texto
set /A n = 20
set cn = %s% %n%
echo %cn%
::Concatenacion
set b = que no requiere comillas
set c = %s% %b% porque es texto en batch
echo %c%
::Lenght - no hay una función por defecto. Hay que definir una.
::https://www.tutorialspoint.com/batch_script/batch_script_string_length.htm

::Convert to int - usa /A en la instrucción set
set tex = 1234
set /A n2 = %tex%+5
echo %n2%
::https://www.tutorialspoint.com/batch_script/batch_script_toint.htm <-- revisit

::Alinear a la derecha - mejora la legibilidad
:: Right String - Permite extraer carácteres desde el final de un string
set x = 1000
set y = 1
echo %x%
set y = %y:~-4%
::~-4 indica que queremos mostrar los ultimos 4 carácteres del string y
echo %y%

::Left String - Permite extraer carácteres desde el principio de un string
set str=Hello World
echo.%str%
set str=%str:~0,5%
echo.%str%
::~0,5 indica que queremos mostrar los carácteres del 0 al 5

::Mid string - Permite extraer un substring utilizando la posición de los carácteres.
set ext = HelloNiggasWorld
echo %ext%
set extr = %str:~5,10%
echo %extr%

::Remove String - permite sustituir o remover un substring.
set sourceStr = Un textoaRemover genialoso
echo %sourceStr%
set finalStr = %sourceStr:aRemover = %
echo %finalStr%
::Replace a string - usamos string substitution
set subsStr = %sourceStr:aRemover= %
echo %subsStr%

::Remove all ends - remueve el principio y el final de un string
set allEnds = Niggas
echo %allEnds%
set noEnds=%allEnds:~1,-1%
echo %noEnds%

::Remove all spaces - Es utilizado para remover todos los espacios usando sustitucion
set strWithSpaces = Esto es un texto       con         muchos         espacios
echo %strWithSpaces%
set strwithoutSpaces = %strWithSpaces:=%
echo %strwithoutSpaces%


ENDLOCAL