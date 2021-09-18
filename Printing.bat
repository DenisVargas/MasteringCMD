::Para imprimir utilizamos el comando PRINT [/D:device] [[drive:][path]filename[...]]
print C:\example.txt /c /d:lpt1
::Esto imprime el texto example al puerto paralelo lpt1, esto último es el dispositivo.

::Si estamos utilizando windows 2000 podemos configurar varios ajustes utilizando PRINTUI.DLL y RUNDLL32.EXE
::RUNDLL32.EXE PRINTUI.DLL,PrintUIEntry [ options ] [ @commandfile ]
::Puedes encontrar las distintas opciones aquí: https://www.tutorialspoint.com/batch_script/batch_script_printing.htm
::También puedes testear si la impresora existe en la red