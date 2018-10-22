rem **Script para automatizar la configuración de direcciones IP estáticas**

netsh interface ipv4 show config
rem MUESTRA LAS CONFIGURACIONES ACTUALES DE RED:
rem Es necesario fijarse en el NOMBRE DE INTERFAZ y
rem el GATEWAY, para poder seguir con el script.

pause
rem El script espera a que nos hayamos fijado en el nombre, pulsar
rem tecla para continuar.

cls
rem Limpia la pantalla

@echo off
rem Silencia el terminal.

echo - Nombre de la interfaz:
set /p x=
echo - Direccion ipv4 estatica:
set /p y=
echo - Gateway:
set /p z=
rem Se pide al usuario que introduzca el NOMBRE DE INTERFAZ, la IP estática
rem que se quiere asignar a la interfaz y el GATEWAY.


echo "Configurando direccion estatica para la interfaz %x%"
netsh interface ipv4 set address name="%x%" static %y% 255.255.255.0 %z%
rem CONFIGURA LA INTERFAZ con lo que ha especificado el usuario.

timeout 10
rem Espera 10 segundos para que los cambios se apliquen.

cls
rem Se limpia la pantalla

ipconfig
pause
rem Se ejecuta para comprobar que la configuración se ha cargado correctamente.
rem FIN
