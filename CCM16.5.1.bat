::RECORE-DEV
::BeginOFCORE
@echo off
color 6F
set version=CCM 16.5.1
set buildtype=Develop
set codetype=G1-plus
set coretype=RECORE
set builddate=23/10/28
set ccmkey=49fh823d
goto CCMMaintip
:RECOR0
echo  ������ǰ����������!
start https://github.com/Djrrv/CCM_RC
pause
goto CCMMain
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
goto CCMMain
:RECOR10
cls
set /p q=����ip����ַ:
:dddstart
::����֮ping
cls
ping %q% -t -l 65500
goto CCMMain
:RECOR11
cls
mountvol c:\ /d
pause
goto CCMMain
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
pause goto CCMMain
:RECOR15
rar.exe a -ep1 -r0 -exit -hpfbx -k -rr -ma5 -m0 -- "%dp0~:\%%a.rar" "C:\Crypto\%%a"
goto CCMMain
:RECOR16
CLS
echo %date%%time%
ping -n 127.0.0.1>nul
goto RECOR16
:RECOR17
echo ��������Ҫ��ٵĺŶ�ǰ��
set /p hd=
echo =>Q���������@Tisobd.txt
set c=1
:reset
set i=10
goto again
:again
title �����%c%��!
set /a i+=1
set /a c+=1
setlocal enabledelayedexpansion
set min=100000
set max=999999
set /a mod=!max!-!min!+1
set /a rand_num=!random!%%!mod!+!min!
set /a i+=1
setlocal enabledelayedexpansion
set mini=100
set maxi=99999999
set /a modi=!maxi!-!mini!+1
set /a randi_num=!random!%%!modi!+!mini!
echo %i%!randi_num! %hd%!rand_num!>>Q���������@Tisobd.txt
if %i%== 99 goto reset
goto again
:RECOR18
rem ȡ�ù���ԱȨ�ޣ����xp�Ժ��ϵͳ��
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d %~dp0
:start
color b
cls
title ϵͳ����ǽ��������
echo,
echo,
echo,                              ��ϵͳ����ǽ�������á�
echo,
echo ==========================================================================
echo,  1������ǽ״̬���    2���ر�/��������ǽ  3��һ���ر�/�ָ��ļ�����˿�
echo,
echo,  4���ر�/�ָ�3389�˿� 5�����ó������˿� 6: ���ó������
echo,
echo,  7�����ö˿ڹ���      8: ����ip����       9: �������˿�
echo,
echo,  10:����/��������    11���ָ�Ĭ�ϲ���    12����ѯ��������  13:ɾ������
echo,
echo,  00���˳���          14: ��ϵͳ����ǽ����̨         
echo ==========================================================================
echo,
set num=
set/p num=������������Ŀ���[00��1-14]��
if /I "%num%"=="" echo ����Ϊ�գ����������룡 &pause&goto start
echo %num%|findstr /be "[0-9]*" >nul && echo, || echo �����������������룡 &&pause&&goto start
if %num%==1 goto 1
if %num%==2 goto 2
if %num%==3 goto 3
if %num%==4 goto 4
if %num%==5 goto 5
if %num%==6 goto 6
if %num%==7 goto 7
if %num%==8 goto 8
if %num%==9 goto 9
if %num%==10 goto 10
if %num%==11 goto 11
if %num%==12 goto 12
if %num%==13 goto 13
if %num%==14 goto 14
if %num%==00 goto 00
goto start

:1
rem ״̬��ѯ
netsh advfirewall show allprofiles
pause
goto start

:2
rem ��������ǽ����
choice /C YN /n /m "��������ǽ���� Y, �رշ���ǽ���� N  [Y/N]��"
if %errorlevel% equ 1 (sc config MpsSvc start= auto>nul 2>nul
                      netsh advfirewall set allprofiles state on >nul 2>nul &&echo,�ѿ�������ǽ����
                      netsh advfirewall set allprofiles firewallpolicy allowinbound,allowoutbound >nul
                      pause)
if %errorlevel% equ 2 (netsh advfirewall set allprofiles state off >nul 2>nul
                      sc config MpsSvc start= disabled >nul 2>nul &&echo,�ѹرշ���ǽ����
                      pause)
goto start                             

:3
choice /C YN /n /m "һ���ر��ļ�����˿����� Y, һ���ָ��ļ�����˿����� N  [Y/N]��"
if %errorlevel% equ 1 ( REM һ���ر��ļ�����˿�
                      netsh advfirewall firewall del rule name="deny-TCP-445,135,137,138,139" >nul 2>nul
                      netsh advfirewall firewall del rule name="deny-UDP-445,135,137,138,139" >nul 2>nul
                                          netsh advfirewall firewall add rule name="deny-TCP-445,135,137,138,139" dir=in action=block protocol=TCP localport=445,135,137,138,139  >nul 2>nul
                      netsh advfirewall firewall add rule name="deny-UDP-445,135,137,138,139" dir=in action=block protocol=UDP localport=445,135,137,138,139  >nul 2>nul
                      echo, &echo,TCP^&UDP[445,135,137,138,139]�˿��Ѿ��ر�
                      pause
                      )

if %errorlevel% equ 2 ( REM һ���ָ��ļ�����˿�
                      netsh advfirewall firewall del rule name="deny-TCP-445,135,137,138,139" >nul 2>nul
                      netsh advfirewall firewall del rule name="deny-UDP-445,135,137,138,139" >nul 2>nul
                      echo, &echo,TCP^&UDP[445,135,137,138,139]�˿��Ѿ��ָ�
                      pause
                      )
goto start

                    
:4
rem �ر�/�ָ�3389�˿�  
choice /C YN /n /m "�ر�3389�˿����� Y, �ָ�3389�˿����� N  [Y/N]��"
if %errorlevel% equ 1 ( rem ��ֹ3389����˿�
                      netsh advfirewall firewall delete rule name=block-server-3389 protocol=tcp localport=3389  >nul 2>nul
                                                    netsh advfirewall firewall add rule name=block-server-3389 dir=in action=block protocol=TCP localport=3389  >nul 2>nul
                      echo,TCP[3389]�˿��Ѿ���ֹ
                      pause)
if %errorlevel% equ 2 ( rem �ָ�3389�������
                      netsh advfirewall firewall delete rule name=block-server-3389 protocol=tcp localport=3389  >nul 2>nul
                      echo,TCP[3389]�˿��Ѿ��ָ�
                      pause)
goto start
         
:5
rem ���ó������˿�
choice /C 123456789 /n /m "[1��Allow Ping] [2��FTP] [3��SSH] [4��Telnet] [5��mail] [6��HTTP HTTPS] [7��TFTP] >>>>>>>>>>>>>>>> ������š�1 / 2 / 3 ...����"
if %errorlevel% equ 1 ( netsh advfirewall firewall delete rule name="Allow Ping" protocol=icmpv4  >nul 2>nul
                                           netsh advfirewall firewall add rule name="Allow Ping" dir=in protocol=icmpv4 action=allow  >nul 2>nul
                                           rem ICMP Allow incoming
                                           echo,Allow Ping
                      pause)
if %errorlevel% equ 2 ( netsh advfirewall firewall delete rule name="Allow FTP" protocol=TCP localport=20,21  >nul 2>nul
                                                netsh advfirewall firewall add rule name="Allow FTP" protocol=TCP dir=in localport=20,21 action=allow  >nul 2>nul
                                          echo,Allow FTP
                      pause)
if %errorlevel% equ 3 ( netsh advfirewall firewall delete rule name="Allow SSH" protocol=TCP localport=22 >nul 2>nul
                                          netsh advfirewall firewall add rule name="Allow SSH" protocol=TCP dir=in localport=22 action=allow >nul 2>nul
                                          Echo,Allow SSH
                      pause)

if %errorlevel% equ 4 ( netsh advfirewall firewall delete rule name="Allow Telnet" protocol=TCP localport=23  >nul 2>nul
                                                netsh advfirewall firewall add rule name="Allow Telnet" protocol=TCP dir=in localport=23 action=allow >nul 2>nul
                                          echo,Allow Telnet
                      pause)                                       

if %errorlevel% equ 5 ( netsh advfirewall firewall delete rule name="Allow mail" protocol=TCP localport=25,110 >nul 2>nul
                                          netsh advfirewall firewall add rule name="Allow mail" protocol=TCP dir=in localport=25,110 action=allow >nul 2>nul
                                          echo,Allow SMTP AND POP3
                      pause)

if %errorlevel% equ 6 ( netsh advfirewall firewall delete rule name="Allow HTTP and HTTPS" protocol=TCP localport=80,443 >nul 2>nul
                                                netsh advfirewall firewall add rule name="Allow HTTP and HTTPS" protocol=TCP dir=in localport=80,443 action=allow  >nul 2>nul
                                          echo,Allow HTTP AND HTTPS
                      pause)
if %errorlevel% equ 7 ( netsh advfirewall firewall delete rule name="Allow TFTP" protocol=UDP localport=69  >nul 2>nul
                                          netsh advfirewall firewall add rule name="Allow TFTP" protocol=UDP dir=in localport=69 action=allow >nul 2>nul
                                          echo,Allow TFTP
                      pause)
                                 
goto start


:6
rem ���ó������
rem ��ֹ%i%�����վ����
rem netsh advfirewall firewall del rule name="%i%">nul 2>nul
rem netsh advfirewall firewall add rule name="%i%" program=%j% action=block dir=out>nul
pause
goto start

:7
rem ���ö˿ڹ���
set name=
set port=
set protocol=
set dir=
set action=
set /p name=����һ����������(�� deny-TCP-445,Allow-tcp-3389��:
set /P action=��������ֹ������ allow/block):
set /p port=����Ҫ��ֹ�Ķ˿ں�(�����˿�:1-65535;�������˿�:137,139,445)��
set /p protocol=Э�����(TCP/udp)��
echo Ԥ�Ʒ���Ϊ������
echo,
netsh advfirewall firewall add rule name="%name%" dir=in protocol=%protocol% localport=%port% action=%action% >nul
echo,------------------------------------------------------------------------
echo,������Ϊ:[%name%] ����Ϊ��%action% ����Ϊ:���� Э��Ϊ:%protocol%  �˿�Ϊ��%port% ����ֹ�����Ѿ�������
echo,------------------------------------------------------------------------
pause
goto start

:8
rem ����ip����
set name=
set action=
set remoteip=
set /p name=��һ��ip��������(�� deny-ip-1.1.1.1,Allow-ip-2.2.2.2��:
set /P action=��������ֹ������ allow/block):
set /p remoteip=Զ��ip��ַ(�磺8.8.8.8)��
echo Ԥ�Ʒ���Ϊ������
echo,
netsh advfirewall firewall add rule name="%name%" dir=in  action=%action% remoteip=%remoteip% >nul
echo,------------------------------------------------------------------------
echo,������Ϊ:[%name%] ����Ϊ��%action% ����Ϊ:���� Զ��ipΪ��%remoteip% ����ֹ�����Ѿ�������
echo,------------------------------------------------------------------------
pause
goto start

:9
rem �������Ҫ���뵽����Ķ˿ں�
rem ����ʹ��all,��ʾTCP��UDP.���ֻ��tcp��UDP,���Ըĳ���Ӧ��
set name=
set port=
set /p name=��һ�������������(�� polycom-port-123��:
set /p port=ָ������Ķ˿ںţ��� 25;20-21)
netsh firewall set portopening all %port% "%name%" enable

rem ɾ���ķ����������set��delete���棬��������ֺ�enable�ÿո����
rem netsh firewall delete portopening all 3230
pause
goto start

:10
rem ��������ǽ���õ��ļ�
choice /C YN /n /m "��������ǽ�������� Y, �ָ�����ǽ�������� N  [Y/N]��"
if %errorlevel% ==1 (IF EXIST exportfile.pol DEL /Q /F outfirewall.pol >NUL 2>NUL
                                        netsh advfirewall export ".\outfirewall.pol" >NUL
                                        echo,
                                        IF EXIST outfirewall.pol echo ����ǽ�����ļ������ɹ�
                                        FOR /F "delims==" %%i IN ('dir /b outfirewall.pol') DO @echo �ļ�λ��%%~dpi%%i  ����ʱ��%%~ti
                                        pause
                                        goto start
                                        )
:importfile
if %errorlevel% ==2 (
                                        echo, &echo �������ļ������Ƶ���ǰĿ¼������Ϊinfirewall.pol&pause
                                    if not exist infirewall.pol (
                                                echo,
                                                echo infirewall.pol�ļ�������
                                                echo,
                                                goto importfile
                                        ) else (
                                                echo,
                                                netsh advfirewall import infirewall.pol >nul &&echo,���������ļ�����ɹ���
                                                echo,
                                        pause)
                                        goto start
                                        )

goto start

:11
rem �ָ�����ǽĬ�ϲ���
netsh advfirewall reset
echo,�Ѿ��ָ�ΪĬ�Ϸ���ǽ����
pause
goto start

:12
rem ���ݹ���������xxxx��ѯ����
netsh advfirewall firewall show rule name=all type=static verbose | find /i "��������:" >firewall%date:~0,4%-%date:~5,2%-%date:~8,2%.txt
start notepad firewall%date:~0,4%-%date:~5,2%-%date:~8,2%.txt
rem del firewall%date:~0,4%-%date:~5,2%-%date:~8,2%.txt
set serfile=
set /P serfile=�����ѯ��������:
NETSH ADVFIREWALL FIREWALL SHOW RULE NAME="%serfile%" verbose
pause
goto start

:13
rem ɾ������
echo,ɾ���Ĺ������ƿ���ͨ��[12����ѯ��������]�ҵ�
echo,
set delfile=
set /P delfile=����Ҫɾ���Ĺ�������:
netsh advfirewall firewall delete rule name="%delfile%">nul &&echo,��ɾ��%delfile%����
echo,
pause
goto start

:14
echo,�Ե�Ƭ��......
ping -n 2 127.0.0.1>nul
start %windir%\system32\WF.msc
goto start

:00
exit
:RECOR19
cls
ping -l 65500 192.168.6.1
ping -l 65500 192.168.6.11
ping -l 65500 192.168.6.12
ping -l 65500 192.168.6.13
ping -l 65500 192.168.6.14
ping -l 65500 192.168.6.15
ping -l 65500 192.168.6.16
ping -l 65500 192.168.6.17
ping -l 65500 192.168.6.18
ping -l 65500 192.168.6.19
ping -l 65500 192.168.6.21
ping -l 65500 192.168.6.22
ping -l 65500 192.168.6.23
ping -l 65500 192.168.6.24
ping -l 65500 192.168.6.25
ping -l 65500 192.168.6.26
ping -l 65500 192.168.6.27
ping -l 65500 192.168.6.28
ping -l 65500 192.168.6.29
ping -l 65500 192.168.6.31
ping -l 65500 192.168.6.32
ping -l 65500 192.168.6.33
ping -l 65500 192.168.6.34
ping -l 65500 192.168.6.35
ping -l 65500 192.168.6.36
ping -l 65500 192.168.6.37
ping -l 65500 192.168.6.38
ping -l 65500 192.168.6.39
ping -l 65500 192.168.6.41
ping -l 65500 192.168.6.42
ping -l 65500 192.168.6.43
ping -l 65500 192.168.6.44
ping -l 65500 192.168.6.45
ping -l 65500 192.168.6.46
ping -l 65500 192.168.6.47
ping -l 65500 192.168.6.48
ping -l 65500 192.168.6.49
ping -l 65500 192.168.6.51
ping -l 65500 192.168.6.52
ping -l 65500 192.168.6.53
ping -l 65500 192.168.6.54
ping -l 65500 192.168.6.55
ping -l 65500 192.168.6.56
ping -l 65500 192.168.6.57
ping -l 65500 192.168.6.58
ping -l 65500 192.168.6.59
goto RECOR19
::beginning of main
::CCM�Զ��û���
:CCMDEV1
cls
goto CCMWrongInterfaceActitivy
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
echo 16.0 16�汾�ع�������
echo 16.0 �ع��û�����
echo 16.5 �ع��ײ�������Ƴ��Ǳ�Ҫ����
pause
goto CCMMain
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
if /i '%Crpmode%'=='3' goto CCMMain
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
:CCMStopUsingActitivy
cls
echo �ù����Ѿ�ͣ�ã�
pause
goto CCMMain
:CCMWrongInterfaceActitivy
cls
echo δ�ҵ���ǰ���ýӿڣ���ȷ�Ͻӿ��Ƿ�ʧЧ��
pause
goto CCMMain
:CCMMaintip
echo ʹ�ô����������ͬ�����ǵ��û�Э��
echo ��ǰ��github�鿴�û�Э��
pause
goto CCMMain
:CCMMain
cls
title %version% ��������Ȩ�� �����Ǳ���ʱ�� %date%
color 6F
echo               ѡ��
echo 1.��������(ͣ��)  2.�Ƶ��Թ��� 3.���ֹ���  4.������Ϣ 5.ʵ�ù��� 6.������ģʽ X.�˳�
set /p CCMMainActitvyChoice$1=��ѡ�� 
if /i '%CCMMainActitvyChoice$1%'=='1' goto CCMDEVC1
if /i '%CCMMainActitvyChoice$1%'=='2' goto CCMDEVC2
if /i '%CCMMainActitvyChoice$1%'=='3' goto CCMDEVC3
if /i '%CCMMainActitvyChoice$1%'=='4' goto CCMDEVC4
if /i '%CCMMainActitvyChoice$1%'=='5' goto CCMDEVC5
if /i '%CCMMainActitvyChoice$1%'=='6' goto CCMDEVC6
if /i '%CCMMainActitvyChoice$1%'=='X' exit
goto CCMMain
:CCMDEVC1
cls
echo               ѡ��
echo 1.HuaRuiKiller Lite  2.����ɨ�� 3.��������  X.������ҳ
set /p CCMMainActitvyChoice$2=��ѡ�� 
if /i '%CCMMainActitvyChoice$2%'=='1' goto CCMStopUsingActitivy
if /i '%CCMMainActitvyChoice$2%'=='2' goto CCMStopUsingActitivy
if /i '%CCMMainActitvyChoice$2%'=='3' goto CCMDEV1
if /i '%CCMMainActitvyChoice$2%'=='X' goto CCMMain
goto CCMDEVC1
:CCMDEVC2
cls
echo               ѡ��
echo 1.�ػ�  2.����C�� 3.ping����  X.������ҳ
set /p CCMMainActitvyChoice$3=��ѡ�� 
if /i '%CCMMainActitvyChoice$3%'=='1' shutdown
if /i '%CCMMainActitvyChoice$3%'=='2' goto RECOR11
if /i '%CCMMainActitvyChoice$3%'=='3' goto RECOR10
if /i '%CCMMainActitvyChoice$3%'=='X' goto CCMMain
goto CCMDEVC2
:CCMDEVC3
cls
echo               ѡ��
echo 1.С��Ϸ  X.������ҳ
set /p CCMMainActitvyChoice$4=��ѡ�� 
if /i '%CCMMainActitvyChoice$4%'=='1' goto RECOR8
if /i '%CCMMainActitvyChoice$4%'=='X' goto CCMMain
goto CCMDEVC3
:CCMDEVC4
cls
echo               ѡ��
echo 1.�汾��Ϣ  2.������־ 3.������  X.������ҳ
set /p CCMMainActitvyChoice$5=��ѡ�� 
if /i '%CCMMainActitvyChoice$5%'=='1' goto RECOR9
if /i '%CCMMainActitvyChoice$5%'=='2' goto CCMDEV3
if /i '%CCMMainActitvyChoice$5%'=='3' goto RECOR0
if /i '%CCMMainActitvyChoice$5%'=='X' goto CCMMain
goto CCMDEVC4
:CCMDEVC5
cls
echo               ѡ��
echo 1.Q����������  2.ϵͳ����ǽ���� 3.�������  4.�����ļ��� 5.�ļ����� 6.BAT�༭�� X.������ҳ
set /p CCMMainActitvyChoice$6=��ѡ�� 
if /i '%CCMMainActitvyChoice$6%'=='1' goto RECOR17
if /i '%CCMMainActitvyChoice$6%'=='2' goto RECOR18
if /i '%CCMMainActitvyChoice$6%'=='3' goto RECOR12
if /i '%CCMMainActitvyChoice$6%'=='4' goto CCMDEV4
if /i '%CCMMainActitvyChoice$6%'=='5' goto CCMDEV5
if /i '%CCMMainActitvyChoice$6%'=='6' goto RECOR5
if /i '%CCMMainActitvyChoice$%'=='X' goto CCMMain
goto CCMDEVC5
:CCMDEVC6
title �ӿڵ�����
cls
echo ����!���ѽ��뿪����ģʽ!����ʹ�ñ�ģʽ��ɵ�һ����Ӳ���𻵼���ʧ�ҷ���������
set /p jiekou=������Ҫ���õĽӿ� 	�������뽫Ĭ�Ͻ�����һ�ε��õĽӿ� 
goto %jiekou%