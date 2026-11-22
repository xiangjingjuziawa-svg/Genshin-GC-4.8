@echo off
chcp 65001 >nul
title Grasscutter 4.8 (Juzi build)
echo ============================================
echo   Grasscutter 4.8 Server
echo ============================================
cd /d "%~dp0"
java -Xms512m -Xmx4g -Dfile.encoding=UTF-8 -jar grasscutter-4.8.0-cn.jar
pause