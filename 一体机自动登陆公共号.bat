@echo off
REM ɾ����������������ӳ��
net use * /del /y

REM ��ʾ�û������û���������
REM set /p username=�������û���: 
REM set /p password=����������: 

REM ӳ������������ Z: �� \\192.168.30.99\homes��ʹ���ṩ���û���������
net use z: \\192.168.30.99\homes /user:000 123

REM ���ӳ���Ƿ�ɹ�
if errorlevel 1 (
    echo ӳ������������ʧ�ܡ�
) else (
    echo ӳ�������������ɹ���
    
    REM ���ļ���Դ����������ʾ��ӳ���������
    explorer z:
)
