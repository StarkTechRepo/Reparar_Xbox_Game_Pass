@echo off
title https://github.com/OtaconEvil
echo Reiniciando los servicios de Xbox Game Pass...
echo.

:: Detener los servicios de Xbox Game Pass
sc config XboxNetApiSvc start=disabled
sc config XblAuthManager start=disabled
sc config XblGameSave start=disabled

:: Espera unos segundos para asegurar que los servicios se detengan completamente
timeout /t 5 /nobreak > nul

:: Iniciar los servicios de Xbox Game Pass
sc config XboxNetApiSvc start=auto
sc config XblAuthManager start=auto
sc config XblGameSave start=auto

:: Inicia los servicios
net start XboxNetApiSvc
net start XblAuthManager
net start XblGameSave

echo.
echo Todos los servicios de Xbox Game Pass han sido reiniciados.
pause
