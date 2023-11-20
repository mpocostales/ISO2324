@echo off
REM checkFiles.bat
REM
REM autor: Mario Pocostales
REM fecha: 17-11-23
set/p archivo="introduzca el nombre dell archivo para verificarlo: "

if exist %archivo% (goto file) else (goto archivo)

:archivo
type nul > %archivo%
echo fichero creado
exit

:file
echo el fichero existe
set/p archivo="introduzca el nombre dell archivo para verificarlo: "
exit