@echo off
title https://github.com/OtaconEvil
echo Reiniciando los servicios de Xbox Game Pass...
echo.

:: Detener los servicios de Xbox Game Pass
sc stop XboxNetApiSvc
sc stop XblAuthManager
sc stop XblGameSave

:: Espera unos segundos para asegurar que los servicios se detengan completamente
timeout /t 5 /nobreak > nul

:: Iniciar los servicios de Xbox Game Pass
sc start XboxNetApiSvc
sc start XblAuthManager
sc start XblGameSave

echo.
echo Todos los servicios de Xbox Game Pass han sido reiniciados.
pause
