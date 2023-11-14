@echo off
REM crear script llamado mkprofile.bat que se encargue de crear dentro del perfil de usuario actual los siguientes directorios:asir dam smr daw ceti
REM
REM autor:Mario Pocostales
REM fecha: 13-11-23
mkdir %userprofile%\asir %userprofile%\dam %userprofile%\smr %userprofile%\daw %userprofile%\ceti
mkdir %userprofile%\asir\docs %userprofile%\asir\pract %userprofile%\asir\exam
mkdir %userprofile%\dam\docs %userprofile%\dam\pract %userprofile%\dam\exam
mkdir %userprofile%\smr\docs %userprofile%\smr\prat %userprofile%\dam\exam
mkdir %userprofile%\daw\docs %userprofile%\daw\prat %userprofile%\daw\exam
mkdir %userprofile%\ceti\docs %userprofile%\ceti\prat %userprofile%\ceti\exam