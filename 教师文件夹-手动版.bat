@echo off
REM ɾ����������������ӳ��
net use * /del /y


REM ��ʾ�û������û���������
set /p username=�������û���: 
set /p password=����������: 

REM ӳ������������ Z: �� \\192.168.30.99\homes��ʹ���ṩ���û���������
net use z: \\192.168.30.99\homes /user:%username% %password%
net use x: \\192.168.30.99\��Ƭ����Ƶ
net use y: \\192.168.30.99\�����ռ�


REM ���ӳ���Ƿ�ɹ�
if errorlevel 1 (
    echo ӳ������������ʧ�ܡ�
) else (
    echo ӳ�������������ɹ���
    
    REM ���ļ���Դ����������ʾhomesĿ¼
    explorer z:
)
