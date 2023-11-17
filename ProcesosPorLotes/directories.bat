@echo off
REM CreateFiles.bat
REM
REM autor: Mario Pocostales
REM fecha: 15-11-23
set/p valor1="introduzca 1 para crear un fichero conn un nombre elegido por ti, introduzca 2 para mostrar el arbol de directorios de la carpeta usuario, introduzca 3 para mostrar archivos conn extension txt, introduzca 4 para crear los directorios alfredoff, marinapg y ramonam en tu directorio actual, introduzca 5 para copiar el contenido de tu carpeta de usuario al escritorio: "  

if %valor1% EQU 1 goto fichero
if %valor1% EQU 2 goto arbol
if %valor1% EQU 3 goto txt
if %valor1% EQU 4 goto directorios
if %valor1% EQU 5 goto escritorio

:fichero
set/p nombrearchivo="eliga el nombre dell archivo: "
echo > %archivo%
exit

:arbol
@echo on
tree %USERPROFILE%
pause
exit

:txt
dir *.txt
pause
exit

:directorios
mkdir alfredoff marinapg ramonam
exit

:escritorio
xcopy %USERPROFILE% C:\Users\alumno\Desktop
exit



