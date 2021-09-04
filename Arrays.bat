::Sintaxis
::FOR %%var_name IN list DO example_code
::https://ss64.com/nt/for.html

@echo off
::Los Arrays o Listas como tal no existen, debemos implementarlo utilizando set.
::Este es el primer método.
set a[0] = 1
set a[1] = 2
set a[2] = 3

::Este es el segundo método.
set list = 1 2 3 4
(for %%a in (%list%) do (
    echo %%a
))

::Clasic For loop -> no existe en batch, pero se puede implementar usando if y labels.
@echo off 
SET /A i = 1 
:loop
IF %i%==5 GOTO END 
echo The value of i is %i% 
SET /a i=%i%+1 
GOTO :LOOP
:END

::Trabajando con For y lists
@echo off 
FOR %%F IN (1 2 3 4 5) DO echo %%F

::Para obtener un valor de un array utilizamos substrings %a[0]%
echo El valor del primer elemento es %a[0]%
::Para modificar el elemento utilizamos set para sobreescribirlo.
a[2] = 10
::Largo de un array? No existe, hay que determinarlo durante el loop.

::Iterando sobre el array
@echo off 
setlocal enabledelayedexpansion
set topic[0]=comments 
set topic[1]=variables 
set topic[2]=Arrays
set topic[3]=Decision making
set topic[4]=Time and date 
set topic[5]=Operators 
::Cada elemento es seteado específicamente con el comando set
for /l %%n in (0,1,5) do ( 
    ::El parametro /l es utilizado para moverse entre rangos al iterar a través del array
   echo !topic[%%n]!
)


::Estructras en Arrays
@echo off
set obj[0].Name=Joe 
set obj[0].ID=1 
set obj[1].Name=Mark 
set obj[1].ID=2 
set obj[2].Name=Mohan 
set obj[2].ID=3 
::Podemos añadir propiedades utilizando la notacion por puntos.
::Syntax -> FOR /L %%variable IN (lowerlimit,Increment,Upperlimit) DO do_something
FOR /L %%i IN (0 1 2) DO  (
    ::FOR /L ejecuta un comando para un rango de numeros.
    ::La variable i es seteada a 0
    ::La parte (0 1 2) es un rango
    ::(start, step, end) https://ss64.com/nt/for_l.html
   call echo Name = %%obj[%%i].Name%%
   call echo Value = %%obj[%%i].ID%%
   :: Why %%? https://ss64.com/nt/syntax-percent.html
)

::Es posible loopear sobre los argumentos de la línea de comandos
@ECHO OFF 
:Loop 

IF "%1"=="" GOTO completed 
FOR %%F IN (%1) DO echo %%F 
SHIFT 
GOTO Loop 
:completed

::No existe un loop while, pero se puede implementar usando ifs y labels
@echo off
SET /A "index = 1"
SET /A "count = 5"
:while
if %index% leq %count% (
   echo The value of index is %index%
   SET /A "index = index + 1"
   goto :while
)

::Break implementation: https://www.tutorialspoint.com/batch_script/batch_script_break_statement_implementation.htm
::Break permite la terminación inmediata de un loop. En Batch utilizamos labels.
@echo off 
SET /A "index=1" 
SET /A "count=5" 
:while 
if %index% leq %count% ( 
   if %index%==2 goto :Increment 
      echo The value of index is %index% 
:Increment 
   SET /A "index=index + 1" 
   goto :while 
)

