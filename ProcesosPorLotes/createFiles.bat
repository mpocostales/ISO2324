@echo off
REM CreateFiles.bat
REM
REM autor: Mario Pocostales
REM fecha: 15-11-23
set/p numero1="introduzca numero 1 para crear archivo.txt o introduzca numero 2 para crear un archivo.bat: "
set/p nombre="escriba el nombre de su archivo: "

if %numero1% EQU 1 goto archivo.txt
if %numero1% EQU 2 goto archivo.bat

:archivo.txt
type nul > %archivo.txt%
echo has selecionado el archivo txt
exit

:archivo.bat
type nul > %archivo.bat%
echo ha seleccionado un archivo bat
exit






