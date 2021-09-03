::DOS tiene DATE y TIME
@echo off
echo %DATE%
echo %TIME%

::Formateo
echo /Today is: %year%-%month%-%day%
goto :EOF
SETLOCAL enableextensions
set t = 2 & if "%date%z" LSS "A" set t = 1

for /f "skip=1 tokens = 2-4 delims = (-)" %%a in ('echo/^|date') do(
    for /f "tokens = %t%-4 delims= -/ " %%d in ('date/t') do(
        set %%a=%%d&set %%b=%%e&set %%c =%%f
    )
)
ENDLOCAL & set %1=%yy% & set %2=%mm% & set %3=%dd% & goto :EOF