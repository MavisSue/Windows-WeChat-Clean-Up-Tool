@echo off
title Windows΢��������        by:yunlongzhuhuo
color 1F
echo.
echo -----------------------------Windows΢��������-------------------------------------
echo.
echo ------------------------------��1.���������¼��---------------------------------
echo.
echo -----------------------------��2.����ͼƬ����Ƶ��-----------------------------------
echo.
echo -----------------------------��3.������յ����ļ���------------------------------
echo.
echo ------------------------------��4.����ȫ�����ݡ�-------------------------------
echo.
set /p input=������Ҫִ�еĲ�������Ӧ�Ĵ��룺
if "%input%"=="1" goto history
if "%input%"=="2" goto pictures
if "%input%"=="3" goto files
if "%input%"=="4" goto all
:history
set /p wxid=���������΢�źţ�
cd %userprofile%\AppData\Roaming\Tencent\WeChat\All Users\config
set /p location=<./3ebffe94.ini
if "%location%"=="MyDocument:" goto first
if "%location%" neq "MyDocument:" goto second
:first
del /f /s /q "%userprofile%\Documents\WeChat Files\%wxid%\Msg\*.*"
echo ����ɹ���
pause
:second
del /f /s /q "%location%\WeChat Files\%wxid%\Msg\*.*"
echo ����ɹ���
pause
:pictures
set /p wxid=���������΢�źţ�
cd %userprofile%\AppData\Roaming\Tencent\WeChat\All Users\config
set /p location=<./3ebffe94.ini
if "%location%"=="MyDocument:" goto first
if "%location%" neq "MyDocument:" goto second
:first
del /f /s /q "%userprofile%\Documents\WeChat Files\%wxid%\FileStorage\Image\*.*"
del /f /s /q "%userprofile%\Documents\WeChat Files\%wxid%\FileStorage\Video\*.*"
echo ����ɹ���
pause
:second
del /f /s /q "%location%\WeChat Files\%wxid%\FileStorage\Image\*.*"
del /f /s /q "%location%\WeChat Files\%wxid%\FileStorage\Video\*.*"
echo ����ɹ���
pause
:files
set /p wxid=���������΢�źţ�
cd %userprofile%\AppData\Roaming\Tencent\WeChat\All Users\config
set /p location=<./3ebffe94.ini
if "%location%"=="MyDocument:" goto first
if "%location%" neq "MyDocument:" goto second
:first
del /f /s /q "%userprofile%\Documents\WeChat Files\%wxid%\FileStorage\File\*.*"
echo ����ɹ���
pause
:second
del /f /s /q "%location%\WeChat Files\%wxid%\FileStorage\File\*.*"
echo ����ɹ���
pause
:all
set /p wxid=���������΢�źţ�
cd %userprofile%\AppData\Roaming\Tencent\WeChat\All Users\config
set /p location=<./3ebffe94.ini
if "%location%"=="MyDocument:" goto first
if "%location%" neq "MyDocument:" goto second
:first
del /f /s /q "%userprofile%\Documents\WeChat Files\%wxid%\*.*"
rd "%userprofile%\Documents\WeChat Files\%wxid%"
echo ����ɹ���
pause
:second
del /f /s /q "%location%\WeChat Files\%wxid%\*.*"
rd "%location%\WeChat Files\%wxid%"
echo ����ɹ���
pause