@echo off
REM 删除所有网络驱动器映射
net use * /del /y


REM 提示用户输入用户名和密码
set /p username=请输入用户名: 
set /p password=请输入密码: 

REM 映射网络驱动器 Z: 到 \\192.168.30.99\homes，使用提供的用户名和密码
net use z: \\192.168.30.99\homes /user:%username% %password%
net use x: \\192.168.30.99\照片和视频
net use y: \\192.168.30.99\公共空间


REM 检查映射是否成功
if errorlevel 1 (
    echo 映射网络驱动器失败。
) else (
    echo 映射网络驱动器成功。
    
    REM 打开文件资源管理器并显示homes目录
    explorer z:
)
