::Tiene una declaración y una definicion
::Ejemplo funcion "Display"
:Display
set /A index =2
echo The value of index is %index%
exit /B 0

::Para llamar a una funcion utilizamos el comando call
@echo off
SETLOCAL
CALL :Display
EXIT /B %ERRORLEVEL%

::Funciones con parámetros
@echo off
SETLOCAL
CALL :Display 5 , 10
EXIT /B %ERRORLEVEL%
:Display
echo The value of parameter 1 is %~1
echo The value of parameter 2 is %~2
EXIT /B 0
::Para acceder a los parámetros utilizamos %~1 o 2 respectivamente

::Funciones con retorno: Utilizamos ~ y el indice posicional
@echo off
SETLOCAL
CALL :SetValue value1,value2
echo %value1%
echo %value2%
EXIT /B %ERRORLEVEL%
:SetValue
set "%~1 = 5"
set "%~2 = 10"
EXIT /B 0

::Funciones con variables locales: utilizar SETLOCAL y ENDLOCAL dentro del cuerpo de la función.
@echo off
set str = Outer
echo %str%
CALL :SetValue str
echo %str%
EXIT /B %ERRORLEVEL%
:SetValue
SETLOCAL
set str = Inner
set "%~1 = %str%"
ENDLOCAL
EXIT /B 0
::En este caso str valdrá Outer porque la variable local es descartada aunque su valor sea retornado.
