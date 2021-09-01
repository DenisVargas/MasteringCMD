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
FOR /L %%i IN (0 1 2) DO  (
    ::FOR /L ejecuta un comando para un rango de numeros.
    ::La variable i es seteada a 0
    ::La parte (0 1 2) es un rango
    ::(start, step, end) https://ss64.com/nt/for_l.html
   call echo Name = %%obj[%%i].Name%%
   call echo Value = %%obj[%%i].ID%%
   :: Why %%? https://ss64.com/nt/syntax-percent.html
)