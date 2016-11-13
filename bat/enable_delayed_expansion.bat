@ECHO OFF
setlocal ENABLEDELAYEDEXPANSION

cd /d %USERPROFILE%

mkdir not\existing\directory\created\in\one\line
tree not
