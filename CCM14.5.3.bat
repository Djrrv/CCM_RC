::RECORE-DEV
::BeginOFCORE
:: 1��2�ػ� 3.����4����5bat�༭��
@echo off
color 6F
set version=CCM 14.5.3 RFGCNWM
set buildtype=Stable
set codetype=R1
set coretype=RECORE
set builddate=22/11/21
set ccmkey=49fh823d
goto shouye1
:RECOR0
echo  ������ǰ����������!
start https://github.com/Djrrv/CCM_RC
pause
goto shouye1
:RECOR1
cls
shutdown -s -t 1
pause
:RECOR2
cls
sildetoshutdown
pause
:RECOR3
netsh interface set interface "��̫��" disabled
netsh interface set interface "����" disabled
netsh interface set interface "WLAN" disabled
netsh interface set interface "WIFI" disabled
netsh interface set interface "��������" disabled
pause
:RECOR4
netsh interface set interface "��̫��" enabled
netsh interface set interface "����" enabled
netsh interface set interface "WLAN" enabled
netsh interface set interface "WIFI" enabled
netsh interface set interface "��������" enabled
:RECOR5
cls
title Bat Editor
echo ��ӭ����bat�༭��
:newproject
cls
echo ������������Ŀ
set /p projectname= �ڴ�������Ŀ��
echo @echo off>%projectname%.bat
:startedit
cls
echo ������Ҫ��ʲô?
set /p aakk= 1.˵һ�仰 2.����ɱ�ֹ��ܰ� 3.����ѡ�� 4.���幦��
if /i '%aakk%'=='1' goto sayec
if /i '%aakk%'=='2' goto hkgnb
if /i '%aakk%'=='3' goto addchoice
if /i '%aakk%'=='4' goto addfunction
:sayec
echo ��Ҫ˵ʲô?
set /p awakk= 
echo echo %awakk%>>%projectname%.bat
echo Done!
pause
goto startedit
:hkgnb
echo �⽫��ӻ���ɱ�ֵĹ��ܵ�������Ŀ�ȷ����
pause
echo :ma>>%projectname%.bat
echo cls>>%projectname%.bat
echo taskkill /f /im RedAgent.exe>>%projectname%.bat
echo goto ma>>%projectname%.bat
echo Done
pause
goto startedit
:addchoice
echo ��Ҫ��ʲô?
set /p Ques= 
echo ���ı�����?
set /p Bname= 
echo set /p %Bname%= %Ques%>>%projectname%.bat
echo �û�����?
set /p pand1= 
echo ���ؽ����
echo ���ؽ��Ӧ����?
set /p aawkk= 1.echo 2.goto
if /i '%aawkk%'=='1' goto shuohuahuida
if /i '%aawkk%'=='2' goto gotohuida
:shuohuahuida
set /p returndata= ����Ҫ˵�Ļ�
echo if /i '%Bname%'=='%pand1%' echo %returndata%>>%projectname%.bat
:gotohuida
echo �� Ҫȥ��?
set /p wherego= 
echo if /i '%Bname%'=='%pand1%' goto %wherego%>>%projectname%.bat
:asking
echo �Ƿ���Ҫ�����һ���жϣ�
set /p aakk= 1.Yes 2.No
if /i '%aakk%'=='1' goto EYES
if /i '%aakk%'=='2' goto ENOS
:EYES
echo �û�����?
set /p pand1= 
echo ���ؽ����
echo ���ؽ��Ӧ����?
set /p aawkk= 1.echo 2.goto
if /i '%aawkk%'=='1' goto shuohuahuida
if /i '%aawkk%'=='2' goto gotohuida
:shuohuahuida
set /p returndata= ����Ҫ˵�Ļ�
echo if /i '%Bname%'=='%pand1%' echo %returndata%>>%projectname%.bat
:gotohuida
echo �� Ҫȥ��?
set /p wherego= 
echo if /i '%Bname%'=='%pand1%' goto %wherego%>>%projectname%.bat
goto asking
goto ENOS
:ENOS
echo Done
pause
goto startedit
:addfunction
echo ��������Ҫ��������ܵ����֡�
set /p funame= 
echo :%funame%>>%projectname%.bat
echo Done
pause
goto startedit
:RECOR6
cls
::����ɱ���̴���killcsΪ0
set  killcs=0
:startkill
echo ��%killcs%��ɱ����!
taskkill /f /im RedAgent.exe
::ɱ���̳ɹ�������+1
set /a killcs+=1
::���ؿ�ʼɱ����
goto startkill
:RECOR7
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t reg_dword /d 00000001 /
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools/tREG_DWORD/d1/f
:RECOR8
@echo off&setlocal enabledelayedexpansion
set li0=������������������������������������������
set li1=�����ЩЩЩЩЩЩЩЩЩЩЩЩЩЩЩЩЩ���1
for /l %%a in (2,1,18) do (set li%%a=����������������������ȩ�%%a)
set li19=�����ةةةةةةةةةةةةةةةةة���19
set li20=������������������������������������������
set li21=   A B C D E F G H I J K L M N O P Q R S
for %%a in (%li21%) do (set/a .+=1,%%a=.&set z!.!=%%a)
set z0= &set z20= &set "z21= "

set li5=!li5!   �� �� �� �� �� �� ս
set li7=!li7!        �� �� ��
set li9=!li9!   �� �� ˮ ƽ �� ��
set li12=!li12!  �� netbenton ��д���
set li14=!li14!  ������Ʋ����� batman
title   ������������


set str=###################
set .=0
for /l %%a in (1,1,19) do (
        set he%%a=!str!&set sh%%a=!str!
        for /l %%b in (1,1,19) do set [%%a.%%b=0
)

set .=33
for /l %%a in (5,1,19) do (
        set pi%%a=!str:~,%%a!&set ni%%a=!str:~,%%a!
        set pi!.!=!str:~,%%a!&set ni!.!=!str:~,%%a!
        set/a .-=1
)


set ��=��&set a��=����
set ��=��&set a��=���

::���õ���IQ
set idea=@@@@#1 #@@@@5 @#@@@4 @@@#@2 @@#@@3 $#$$$4 $$#$$3 $$$#$2 $$$$#1 #$$$$5 #$$#$#3 #$#$$#4 #@@@##2 ##@@@#5 #@@#@#3 #@#@@#4 #@@@#1
set idea=!idea! ##@@@4 @@@##2 ##$$$#5 #$$$##2 #$$$#1 ##@@#4 #@@##2 ##$$#4 #$$##2 #$#$#3 @@###3 ###@@3
set idea=!idea! ##@##2 ###@#3 #@###3 @####4 ####@2 ##############7 ###########6 ########4 #####3 ####2
set ttr=!idea:@=��!&set ttr=!ttr:$=��!
for %%a in (!ttr!) do (set var=%%a&set !var:~,-1!=!var:~-1!&set idea=!idea! !var:~,-1!)
set ttr=
::���õ���IQ

:restart
for /l %%a in (0,1,21) do (echo    !z%%a!!li%%a!)
setlocal enabledelayedexpansion
set li21=!li21!      reboot���¿�ʼ,exit�˳���
set /p var=ѡ��˭����[ W,���  D,����  Q,�˳� ]:
if /i "!var!" equ "Q" goto :eof
if /i "!var!" equ "W" (set zhi=��) else (set zhi=��)
echo.


:loop
if %zhi% equ �� goto :men
set .=&set put1=
for %%a in (!idea!) do (
        for %%b in (he sh) do (
                for /l %%c in (1,1,19) do (
                        if "!%%b%%c:%%a=!" neq "!%%b%%c!" set/a .+=1&set put!.!=%%b %%c
        )        )
        for %%b in (pi ni) do (
                for /l %%c in (5,1,33) do (
                        if "!%%b%%c:%%a=!" neq "!%%b%%c!" set/a .+=1&set put!.!=%%b %%c
        )        )
if defined put1 set put=%%a&goto :get
)

echo. �Ѿ�������
pause
goto :restart

:men
for /l %%a in (0,1,21) do (echo    !z%%a!!li%%a!)
set /p user=[��ǰ���к�]:
echo.
if "!user!" equ "reboot" endlocal&goto :restart
if "!user!" equ "exit" exit
set/a pos=!user:~0,1!,poh=!user:~1,2!,var=pos-1 2>nul
if not defined [!poh!.!pos! echo ����㲻����&goto :men
if "!he%poh%:~%var%,1!" neq "#" echo �õ��Ѿ�����&goto men
goto :getok

:get
set /a .=!random!%%.+1
set put=!put%.%! !put!
::���ȡ��ѵ��߷�

for /f "tokens=1-3" %%a in ("%put%") do (
        set var=!%%a%%b:*%%c=!srqponmlkjihgfedcba0
        set/a var=!var:~19,1!+%%c
        if "%%a" equ "he" (set/a poh=%%b,pos=20-var)
        if "%%a" equ "sh" (set/a poh=20-var,pos=%%b)
        if %%b lss 19 (set/a var=%%b-var+1) else (set/a var=38-%%b-var+1)
        if "%%a" equ "pi" (if %%b lss 19 (set/a pos=var,poh=%%b-var+1) else (set/a poh=20-var,pos=%%b-19+var))
        if "%%a" equ "ni" (if %%b lss 19 (set/a pos=var,poh=19-%%b+var) else (set/a poh=var,pos=%%b-19+var))
)
echo  ����������ڣ�!z%pos%!!z%poh%!(%poh%)

:getok
set zhi=!%zhi%!&set win=!zhi!!zhi!!zhi!!zhi!!zhi!
set/a piph=poh+pos-1,lips=pos+1,niph=19+pos-poh

if !piph! lss 19 (set/a pips=pos) else (set/a pips=20-poh)
if !niph! lss 19 (set/a nips=pos) else (set/a nips=poh)


for %%a in ("li!poh! !lips!" "he!poh! !pos!" "sh!pos! !poh!" "pi!piph! !pips!" "ni!niph! !nips!") do (
        for /f "tokens=1,2" %%b in (%%a) do (
                if defined %%b (
                        set/a .=%%c-1
                        for %%d in (!.!) do (set %%b=!%%b:~0,%%d!%zhi%!%%b:~%%c!)
                if "!%%b:%win%=!" neq "!%%b!" set win=y
                )
        )
)
set/a asc%zhi%+=1
if !win! neq y goto :loop
for /l %%a in (0,1,21) do (echo    !z%%a!!li%%a!)
set/p=   !a%zhi%! %zhi%�� ��!asc%zhi%!��  ʤ��     <nul
pause
endlocal&goto :restart
:RECOR9
cls
echo    __________   __________   ___      __
echo    /        /   /        /   /  \    /   \
echo   /   -------   /   -------   / / \ \  / /\  \
echo   /   /       /   /        / /   \_\/_/  \  \
echo  /   /______ /   /_______  / /           \  \
echo  /__________/___________/ /_/             \__\
echo CCM
echo ��ǰ�汾�� %version%
echo ����ʱ�� %builddate%
echo �ں� %codetype%
echo �ں˰汾 %buildtype%
echo 
pause
:RECOR10
cls
set /p q=����ip����ַ:
:dddstart
::����֮ping
cls
ping %q% -t -l 65500
goto shouye1
:RECOR11
cls
mountvol c:\ /d
pause
goto shouye1
:RECOR12
@echo off
mode con cols=80 lines=50
color 1f
if exist "%SystemRoot%\SysWOW64" path %path%;%windir%\SysNative;%SystemRoot%\SysWOW64;%~dp0
bcdedit >nul
if '%errorlevel%' NEQ '0' (goto UACPrompt) else (goto UACAdmin)
:UACPrompt
%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit
exit /B
:UACAdmin
cd /d "%~dp0"
echo ��ǰ����·���ǣ�%CD%
echo �ѻ�ȡ����ԱȨ��
:CMD
cls
echo.
echo                            ��������̹���
echo.
echo                          1------------�������Ĵ���
echo.
echo                          2------------�����������
echo.
echo                          3------------�����������
echo.
echo                          4------------�Ͽ��������
echo.
echo                          5------------ɾ�������ļ�
set /p CS= ������ѡ��------------
if "%CS%"=="1"  goto cmd1
if "%CS%"=="2"  goto cmd2
if "%CS%"=="3"  goto cmd3
if "%CS%"=="4"  goto cmd4
if "%CS%"=="5"  goto cmd5
:cmd1
set /p VF= �������������������ļ�·��------------
goto CMD
:cmd2
set /p VU=������������̴�С����λM��------------
echo  CREATE VDISK FILE="%VF%" MAXIMUM=%VU%>������̲���.txt
diskpart /s  ������̲���.txt
pause
goto CMD
:cmd3
echo SELECT VDISK FILE="%VF%">������̲���.txt
echo attach vdisk>>������̲���.txt
diskpart /s  ������̲���.txt
pause
goto CMD
:cmd4
echo SELECT VDISK FILE="%VF%">������̲���.txt
echo detach vdisk>>������̲���.txt
diskpart /s  ������̲���.txt
pause
goto CMD
:cmd5
del /f /q %VF%
echo �ɹ�ɾ������VHD/VHDXԴ�ļ��ļ�
pause
goto CMD
:RECOR13
cls
title ���ܳ���
if EXIST "���������ļ���" goto UNLOCK
if NOT EXIST �����ļ� goto MDLOCKER
:CONFIRM
echo ��ȷ��Ҫ�����ļ�����?(Y/N)��Y=��-N=����
set/p "cho=(more than)"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo ѡ����Ч.
goto CONFIRM
:LOCK
ren �����ļ� "���������ļ���"
attrib +h +s "���������ļ���"
echo �ļ���������
goto End
:UNLOCK
echo ������������ļ���
set/p "pass=(more than)"
if NOT %pass%== %INPASSWORD% goto FAIL
attrib -h -s "���������ļ���"
ren "���������ļ���" �����ļ�
echo �ļ��н����ɹ�
goto End
:FAIL
echo ������Ч
goto end
:MDLOCKER
md �����ļ�
echo �����ļ� �ɹ�����
goto End
:End
:RECOR14
CLS
rar.exe a -ep1 -r0 -exit -hpfbx -k -rr -ma5 -m0 -- "%dp0~\Crp.rar" "%dp0~\a"
pause goto shouye1
:RECOR15
rar.exe a -ep1 -r0 -exit -hpfbx -k -rr -ma5 -m0 -- "%dp0~:\%%a.rar" "C:\Crypto\%%a"
::beginningofmain
:shouye1
cls
title %version% ��������Ȩ�� �����Ǳ���ʱ�� %date%
color 6F
echo ʹ�ô����������ͬ�����ǵ��û�Э��
echo ��ǰ��github�鿴�û�Э��
echo                                                            ѡ��
echo        1.������ 2.С��Ϸ 3.HuaRuiKiller Lite  4.�ػ� 5.����c�� 6.������־ 7.�����ѹ 8.Bat�༭��(������) 9.һ���Ӽ������ 10.�鿴�汾�� 11.������� 12.�����ļ���  13.�ļ����� X.�˳�
set /p a=��ѡ�� 
if /i '%a%'=='1' goto RECOR0
if /i '%a%'=='2' goto RECOR8
if /i '%a%'=='3' goto RECOR6
if /i '%a%'=='4' goto CCMDEV2
if /i '%a%'=='5' goto RECOR11
if /i '%a%'=='6' goto CCMDEV3
if /i '%a%'=='7' goto RECOR10
if /i '%a%'=='8' goto RECOR5
if /i '%a%'=='9' goto CCMDEV1
if /i '%a%'=='X' exit
if /i '%a%'=='10' goto RECOR9
if /i '%a%'=='11' goto RECOR12
if /i '%a%'=='12' goto CCMDEV4
if /i '%a%'=='13' goto CCMDEV5
goto shouye1
::CCM�Զ��û���
:CCMDEV1
cls
echo ��ѡ�����ģʽ���޵�ģʽ
echo ����ģʽֻʹ�þɰ滪��ɱ�ַ������޵�ģʽָʹ�ö�����ʽ���ﵽ�Ի����һ��������
echo ����Ҳ�Ƽ�ʹ��ProgramKiller ���κΰ汾��HuaRuiKiller������Ч��������С����ʦ�����ȡ���Ч���ܴﵽ���·���������
echo ����1ѡ�����ģʽ ����2ѡ���޵�ģʽ ����3һ���ָ�����
set /p aqq1=
if /i '%aqq1%'=='1' goto RECOR6
if /i '%aqq1%'=='2' goto RECOR3
if /i '%aqq1%'=='3' goto RECOR4
:CCMDEV2
cls
echo �Ƿ�ʹ���·���?
set /p aqqq=1 �� 2 ����
if /i '%aqqq%'=='1' goto RECOR1
if /i '%aqqq%'=='2' goto RECOR2
echo Error
goto CCMDEV2
:CCMDEV3
cls
echo 2.0��־
echo 1.0ʺɽ���� ȫ���ع�
echo ʹ�����߼���Ч������50%
echo 3.0��־
echo ʺɽ�������д����ȥ 3.0�����Ż�
echo 4.0��־ ���Ƹ�ΪCCM(CloudComputerManager)
echo 5.0��־ �������1.0����ȫ���ع����Ƴ�һЩ���׵���bug�Ĺ���
echo 6.0��־ȱʧ
echo 7.0�޸�һЩ�ײ�bug
echo 8.0��ӹ���,���Զ�������
echo 9.0-10.0 ���Bat�༭��
echo Xeon�汾��Ӷ��ֹ���
echo 12.0 ���Ż�����Ϊ�� ȥ����һЩ���ù����Լ��ӿ�
echo 13.0 ȥ����ӡ��־
echo 13.1 �������ں�
echo 14.1 �����������
echo 15.1 �����ļ��м���
:CCMDEV4
cls
echo �����趨�����ļ�������
set /p inpassword=
goto RECOR13
:CCMDEV5
title File Crypto
echo �ļ����ܶԻ����кܴ�Ҫ�󣬲�����С��ʹ��
echo ��ѡ��ģʽ
echo 1.�����ļ����� 2.����ļ����� 3.�˳�
set /p Crpmode=
if /i '%Crpmode%'=='1' goto Nex
if /i '%Crpmode%'=='2' goto Mlo
if /i '%Crpmode%'=='3' goto shouye1
goto CCMDEV5
:Nex
echo �뽫Ҫ���ܵ��ļ�����ΪCrp ��ʽrar ����Ŀ¼��
pause
goto RECOR14
:Mlo
echo �뽫������Ҫ���ܵ��ļ����ڱ�Ŀ¼
echo �������Ŀ¼:c:\Crypto
pause
goto RECOR15