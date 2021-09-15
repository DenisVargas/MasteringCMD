::Comando NET
::Podemos ver, actualizar o arreglar las configuraciones de la red https://www.tutorialspoint.com/batch_script/batch_script_net_accounts.htm
::Al utililizar NET nos mostrará una lista de comandos dispoibles

::Ejemplos

::NET ACCOUNTS [/FORCELOGOFF:{minutes | NO}] [/MINPWLEN:length] [/MAXPWAGE:{days | UNLIMITED}] [/MINPWAGE:days] [/UNIQUEPW:number] [/DOMAIN]
NET ACCOUNTS
NET CONFIG
::NET COMPUTER \\computername {/ADD | /DEL}
NET COMPUTER

::NET USER nos permite añadir, eliminar, modificar o ver los detalles de una cuenta de usuario específico.
::Net user [username [password | *] [options]] [/DOMAIN] 
::username {password | *} /ADD [options] [/DOMAIN] 
::username [/DELETE] [/DOMAIN]
NET USER

::NET STOP/START - Inicia o detiene un servicio en particular.
::Net stop/start [servicename]
NET STOP Spooler
NET START Spooler

::NET statistics - Muestra estadísticas de un workstation o servidor.
::Net statistics [SERVER/WORKSTATION]
Net statistics Server

::NET USE - Conecta o desconecta una computadora a un recurso compartido y muestra información sobre las conecciones.
:: https://www.tutorialspoint.com/batch_script/batch_script_net_use.htm
:: NET USE [devicename | *] [\\computername\sharename[\volume] [password | *]] 
:: [/USER:[domainname\]username] 
:: [/USER:[dotted domain name\]username]
:: [/USER:[username@dotted domain name] 
:: [/SMARTCARD] 
:: [/SAVECRED] [[/DELETE] | [/PERSISTENT:{YES | NO}]]
net use z: \\computer\test
::Este comando conecta al nombre compartido \\computer\test y asigna el nombre de dispositivo z: al mismo.