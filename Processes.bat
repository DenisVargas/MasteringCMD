::Los procesos son programas que están siendo ejecutados.
::https://www.tutorialspoint.com/batch_script/batch_script_process.htm
::Hay 3 operaciones básicas que podemos hacer Listar - Inicar - Terminar

::Listado - Utilizamos TASKLIST [/S system [/U username [/P [password]]]] [/M [module] | /SVC | /V] [/FI filter][/FO format] [/NH]
TASKLIST
TASKLIST > process.txt
::Utiliza redirección para guardar el output en un documento.
tasklist /fi "memusage gt 40000"
::Puedes utilizar lo siguiente para filtrar los procesos en base a la memoria utilizada (en kb: 40000kb = 40MB)

::Iniciar un proceso - Usamos START "title" [/D path] [options] "command" [parameters]
START "Test Batch Script" /Min test.bat
::Inicia la ejecución del archivo test.bat en una nueva ventana minimizada.
START "" "C:\Program Files\Microsoft Office\Winword.exe" "D:\test\TESTA.txt"
::Este comando iniciara MicrosoftWord en otro proceso y abrirá el archivo TESTA.txt

::Terminando un proceso - Usamos TASKKill [/S system [/U username [/P [password]]]] { [/FI filter] [/PID processid | /IM imagename] } [/T] [/F]
taskkill /f /im notepad.exe
::Este comando termina con el notepad si es que esta abierto.
taskill /pid 9214
::Este comando termina el proceso con pid 9214
