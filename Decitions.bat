::Básicamente if statements
::if (condition) do_something

::Checking numbers
@echo off
set /a a=5
set /a b=10
set /a c=%a%+%b%
if %c%==15 echo "El valor de la variable c es 15"
if %c%==10 echo "El valor de la variable c es 10"

::Checking strings, is case Sensitive!
@echo off
set str1 = string1
set str2 = string2
if %str1%==string1 echo "The value of variable is string1"
if %str2%==string3 echo "The value of variable is string3"

::Podemos chequear los argumenos del comando de línea usando %1 %2 y %3 etc...
::Tambien se soporta la palabra clave ELSE. Separar las partes utilizando ()
::Se soporta anidar condicionales
if %a%==5 if %b%==10 echo "The value of the variables are correct"

::Caso especial: IF DEFINED es utilizado para chequear si una variable existe.
@echo off
set testString = "un string de prueba"
if defined test (echo "Variable str1 is defined") else (echo "Variable str1 no esta definida")

::Caso especial: IF EXISTS es utilizado para chequear la existencia de un archivo.
@echo off
if exists C:\set2.txt echo "file exists"
if exists C:\set3.txt (echo "File exists") else (echo "file does not exists")

::Caso especial: IF ERRORLEVEL testea códigos de salida. (0 success, 1 error)
::if errorlevel n somecommand --> donde "n" es el código de salida.

::GOTO -> permite saltar a una línea determinada
goto :aLabel
::Algunos comandos
:aLabel
::Más comandos
::Generalmente se utilizan en conjunto con if (condition) goto :label
::Ejemplo
@echo off 
SET /A a = 5 

if %a%==5 goto :labela 
if %a%==10 goto :labelb

:labela 
echo "The value of a is 5" 

exit /b 0

:labelb 
echo "The value of a is 10"
