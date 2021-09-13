::Utilizamos DevCon.exe para trabajar con dispositivos conectados.
::Podemos utilizar los comandos (enable, disable, install, start, stop, continue) para testear Drivers.
%WindowsSdkDir%\tools\x64\devcon.exe
%WindowsSdkDir%\tools\x86\devcon.exe
%WindowsSdkDir%\tools\arm\devcon.exe
::devcon [/m:\\computer] [/r] command [arguments]
::More in: https://www.tutorialspoint.com/batch_script/batch_script_devices.htm

::Esto es algo que no tocaríamos típicamente a menos que seamos Driver Developers