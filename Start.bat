@echo off
:scriptstart
:modelset
echo.
echo �п�J�zī�G�˸m���������A��: iPhone8,2 (�Шϥ�iTunes�Ӭd��): 
echo.
set /p iDeviceModel= ""
if "%iDeviceModel%"=="iPad4,1" goto :modelwrite
if "%iDeviceModel%"=="iPad4,2" goto :modelwrite
if "%iDeviceModel%"=="iPad4,3" goto :modelwrite
if "%iDeviceModel%"=="iPad4,4" goto :modelwrite
if "%iDeviceModel%"=="iPad4,5" goto :modelwrite
if "%iDeviceModel%"=="iPad4,6" goto :modelwrite
if "%iDeviceModel%"=="iPad4,7" goto :modelwrite
if "%iDeviceModel%"=="iPad4,8" goto :modelwrite
if "%iDeviceModel%"=="iPad4,9" goto :modelwrite
if "%iDeviceModel%"=="iPad5,1" goto :modelwrite
if "%iDeviceModel%"=="iPad5,2" goto :modelwrite
if "%iDeviceModel%"=="iPad5,3" goto :modelwrite
if "%iDeviceModel%"=="iPad5,4" goto :modelwrite
if "%iDeviceModel%"=="iPad6,7" goto :modelwrite
if "%iDeviceModel%"=="iPad6,8" goto :modelwrite
if "%iDeviceModel%"=="iPad6,3" goto :modelwrite
if "%iDeviceModel%"=="iPad6,4" goto :modelwrite
if "%iDeviceModel%"=="iPhone6,1" goto :modelwrite
if "%iDeviceModel%"=="iPhone6,2" goto :modelwrite
if "%iDeviceModel%"=="iPhone7,2" goto :modelwrite
if "%iDeviceModel%"=="iPhone7,1" goto :modelwrite
if "%iDeviceModel%"=="iPhone8,1" goto :modelwrite
if "%iDeviceModel%"=="iPhone8,2" goto :modelwrite
if "%iDeviceModel%"=="iPhone8,4" goto :modelwrite
if "%iDeviceModel%"=="iPhone9,1" goto :modelwrite
if "%iDeviceModel%"=="iPhone9,3" goto :modelwrite
if "%iDeviceModel%"=="iPhone9,2" goto :modelwrite
if "%iDeviceModel%"=="iPhone9,4" goto :modelwrite
if "%iDeviceModel%"=="iPod7,1" goto :modelwrite
echo.
echo �z��J���˸m�������ä��s�b�A�i��O�z��J���~�]���������j�p�g�Ϥ��^�άO�z��J���������O���䴩��32�줸�˸m�C
goto :modelset
:modelwrite
echo.
fart Data\Scripts\ IMODEL %iDeviceModel%
:ecidset
echo. 
echo ���۽п�J�z�˸m��ECID�A��: 123456789ABDC (�Шϥ�iTunes�Ӭd��): 
echo.
set /p iDeviceECID= ""
echo.
set /p a=�z�ҿ�J��ECID�� %iDeviceECID% �A�бz�A���ˬd�T�{�L�~�A�æ^��Y��N�H�T�{ [Y/N]
if /I "%a%" EQU "Y" goto :ecidwrite
if /I "%a%" EQU "N" goto :ecidset
:ecidwrite
echo.
fart Data\Scripts\ IECID %iDeviceECID%
echo.
echo �Ь��z�˸m�M�ݪ�SHSH2��Ƨ��R�W�A�ݡy�ϥέ^��R�W�z�ýЪ`�N���n�ϥΥH�U�S��Ÿ�  \ / : * ? " < > | �A���M�X�N�~���ܧڭ̤��|�t�d
echo.
set /p iDeviceName= ""
set iDeviceName=%iDeviceName: =-%
mkdir SavedSHSH2
mkdir SavedSHSH2\%iDeviceName%
mkdir SavedSHSH2\%iDeviceName%\NoApnonce
mkdir SavedSHSH2\%iDeviceName%\Apnonce-603be133ff0bdfa0f83f21e74191cf6770ea43bb
mkdir SavedSHSH2\%iDeviceName%\Apnonce-352dfad1713834f4f94c5ff3c3e5e99477347b95
mkdir SavedSHSH2\%iDeviceName%\Apnonce-42c88f5a7b75bc944c288a7215391dc9c73b6e9f
mkdir SavedSHSH2\%iDeviceName%\Apnonce-0dc448240696866b0cc1b2ac3eca4ce22af11cb3
mkdir SavedSHSH2\%iDeviceName%\Apnonce-9804d99e85bbafd4bb1135a1044773b4df9f1ba3
echo.
echo ���b�x�s�ڴK�H�D��SHSH2 Bolbs���A�Э@�ߪ����ݨæb�����e�������������A�b���ݪ��L�{���A�i�H���hť���q�ө��P�@�UXD
echo �P��@2klasic���ڭ����ڷQ���@�B!
echo.
pause
echo.
CALL Data\Scripts\ScriptN.bat
move *.shsh2 "SavedSHSH2\%iDeviceName%\NoApnonce\"
CALL Data\Scripts\ScriptA1.bat
move *.shsh2 "SavedSHSH2\%iDeviceName%\Apnonce-603be133ff0bdfa0f83f21e74191cf6770ea43bb\"
CALL Data\Scripts\ScriptA2.bat
move *.shsh2 "SavedSHSH2\%iDeviceName%\Apnonce-352dfad1713834f4f94c5ff3c3e5e99477347b95\"
CALL Data\Scripts\ScriptA3.bat
move *.shsh2 "SavedSHSH2\%iDeviceName%\Apnonce-42c88f5a7b75bc944c288a7215391dc9c73b6e9f\"
CALL Data\Scripts\ScriptA4.bat
move *.shsh2 "SavedSHSH2\%iDeviceName%\Apnonce-0dc448240696866b0cc1b2ac3eca4ce22af11cb3\"
CALL Data\Scripts\ScriptA5.bat
move *.shsh2 "SavedSHSH2\%iDeviceName%\Apnonce-9804d99e85bbafd4bb1135a1044773b4df9f1ba3\"
echo.
echo �A�@�U�U�A�֧����F�A�A���q�����b�V�O���m�}��!
echo.
fart Data\Scripts\ %iDeviceModel% IMODEL
fart Data\Scripts\ %iDeviceECID% IECID
echo.
echo ����! �A�w�g���\�x�s�A�{�b�˸m��Bolbs�F�A�U�ƭѳƥu��F���A�N�Ʊ�N�Ӧ��A����k�ӥγo��Bolbs������~
echo.
echo ��TSSChecker�u��O��Sankumatzo�Ҽ��g�A�å�AppleQ�ζ��c�餤��ơA�P�¨ϥΡI
echo ��hī�G�޳N��T�Ш� https://appleq.org/
echo.
set /P c=�аݱz�O�_�]�Q���t�@�x�˸m�]����SHSH2 Bolbs�O? [Y/N]?
if /I "%c%" EQU "Y" goto :scriptstart
if /I "%c%" EQU "N" goto :end
:end