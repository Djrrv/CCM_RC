::RECORE-DEV
::BeginOFCORE
:: 1，2关机 3.关网4开网5bat编辑器
@echo off
color 6F
set version=CCM 16.0.1
set buildtype=Stable
set codetype=G1
set coretype=RECORE
set builddate=23/1/1
set ccmkey=49fh823d
goto shouye1
:RECOR0
echo  请自行前往官网下载!
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
netsh interface set interface "以太网" disabled
netsh interface set interface "网络" disabled
netsh interface set interface "WLAN" disabled
netsh interface set interface "WIFI" disabled
netsh interface set interface "本地连接" disabled
pause
:RECOR4
netsh interface set interface "以太网" enabled
netsh interface set interface "网络" enabled
netsh interface set interface "WLAN" enabled
netsh interface set interface "WIFI" enabled
netsh interface set interface "本地连接" enabled
:RECOR5
cls
title Bat Editor
echo 欢迎来到bat编辑器
:newproject
cls
echo 请命名您的项目
set /p projectname= 在此输入项目名
echo @echo off>%projectname%.bat
:startedit
cls
echo 您现在要做什么?
set /p aakk= 1.说一句话 2.华锐杀手功能包 3.加入选择 4.定义功能
if /i '%aakk%'=='1' goto sayec
if /i '%aakk%'=='2' goto hkgnb
if /i '%aakk%'=='3' goto addchoice
if /i '%aakk%'=='4' goto addfunction
:sayec
echo 您要说什么?
set /p awakk= 
echo echo %awakk%>>%projectname%.bat
echo Done!
pause
goto startedit
:hkgnb
echo 这将添加华锐杀手的功能到您的项目里，确定吗？
pause
echo :ma>>%projectname%.bat
echo cls>>%projectname%.bat
echo taskkill /f /im RedAgent.exe>>%projectname%.bat
echo goto ma>>%projectname%.bat
echo Done
pause
goto startedit
:addchoice
echo 您要问什么?
set /p Ques= 
echo 您的变量名?
set /p Bname= 
echo set /p %Bname%= %Ques%>>%projectname%.bat
echo 用户输入?
set /p pand1= 
echo 返回结果？
echo 返回结果应该是?
set /p aawkk= 1.echo 2.goto
if /i '%aawkk%'=='1' goto shuohuahuida
if /i '%aawkk%'=='2' goto gotohuida
:shuohuahuida
set /p returndata= 输入要说的话
echo if /i '%Bname%'=='%pand1%' echo %returndata%>>%projectname%.bat
:gotohuida
echo 你 要去哪?
set /p wherego= 
echo if /i '%Bname%'=='%pand1%' goto %wherego%>>%projectname%.bat
:asking
echo 是否需要在添加一个判断？
set /p aakk= 1.Yes 2.No
if /i '%aakk%'=='1' goto EYES
if /i '%aakk%'=='2' goto ENOS
:EYES
echo 用户输入?
set /p pand1= 
echo 返回结果？
echo 返回结果应该是?
set /p aawkk= 1.echo 2.goto
if /i '%aawkk%'=='1' goto shuohuahuida
if /i '%aawkk%'=='2' goto gotohuida
:shuohuahuida
set /p returndata= 输入要说的话
echo if /i '%Bname%'=='%pand1%' echo %returndata%>>%projectname%.bat
:gotohuida
echo 你 要去哪?
set /p wherego= 
echo if /i '%Bname%'=='%pand1%' goto %wherego%>>%projectname%.bat
goto asking
goto ENOS
:ENOS
echo Done
pause
goto startedit
:addfunction
echo 请输入你要叫这个功能的名字。
set /p funame= 
echo :%funame%>>%projectname%.bat
echo Done
pause
goto startedit
:RECOR6
cls
::设置杀进程次数killcs为0
set  killcs=0
:startkill
echo 第%killcs%次杀进程!
taskkill /f /im RedAgent.exe
::杀进程成功，次数+1
set /a killcs+=1
::返回开始杀进程
goto startkill
:RECOR7
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools /t reg_dword /d 00000001 /
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v DisableRegistryTools/tREG_DWORD/d1/f
:RECOR8
@echo off&setlocal enabledelayedexpansion
set li0=┌───────────────────┐
set li1=│┌┬┬┬┬┬┬┬┬┬┬┬┬┬┬┬┬┬┐│1
for /l %%a in (2,1,18) do (set li%%a=│├┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┼┤│%%a)
set li19=│└┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┴┘│19
set li20=└───────────────────┘
set li21=   A B C D E F G H I J K L M N O P Q R S
for %%a in (%li21%) do (set/a .+=1,%%a=.&set z!.!=%%a)
set z0= &set z20= &set "z21= "

set li5=!li5!   五 棋 子 人 机 对 战
set li7=!li7!        批 处 理
set li9=!li9!   电 脑 水 平 中 等
set li12=!li12!  由 netbenton 编写完成
set li14=!li14!  棋盘设计参照了 batman
title   批处理五子棋


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


set ●=○&set a●=电脑
set ○=●&set a○=玩家

::设置电脑IQ
set idea=@@@@#1 #@@@@5 @#@@@4 @@@#@2 @@#@@3 $#$$$4 $$#$$3 $$$#$2 $$$$#1 #$$$$5 #$$#$#3 #$#$$#4 #@@@##2 ##@@@#5 #@@#@#3 #@#@@#4 #@@@#1
set idea=!idea! ##@@@4 @@@##2 ##$$$#5 #$$$##2 #$$$#1 ##@@#4 #@@##2 ##$$#4 #$$##2 #$#$#3 @@###3 ###@@3
set idea=!idea! ##@##2 ###@#3 #@###3 @####4 ####@2 ##############7 ###########6 ########4 #####3 ####2
set ttr=!idea:@=●!&set ttr=!ttr:$=○!
for %%a in (!ttr!) do (set var=%%a&set !var:~,-1!=!var:~-1!&set idea=!idea! !var:~,-1!)
set ttr=
::设置电脑IQ

:restart
for /l %%a in (0,1,21) do (echo    !z%%a!!li%%a!)
setlocal enabledelayedexpansion
set li21=!li21!      reboot重新开始,exit退出。
set /p var=选择谁先下[ W,玩家  D,电脑  Q,退出 ]:
if /i "!var!" equ "Q" goto :eof
if /i "!var!" equ "W" (set zhi=●) else (set zhi=○)
echo.


:loop
if %zhi% equ ● goto :men
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

echo. 已经和棋了
pause
goto :restart

:men
for /l %%a in (0,1,21) do (echo    !z%%a!!li%%a!)
set /p user=[列前，行后]:
echo.
if "!user!" equ "reboot" endlocal&goto :restart
if "!user!" equ "exit" exit
set/a pos=!user:~0,1!,poh=!user:~1,2!,var=pos-1 2>nul
if not defined [!poh!.!pos! echo 输入点不存在&goto :men
if "!he%poh%:~%var%,1!" neq "#" echo 该点已经有子&goto men
goto :getok

:get
set /a .=!random!%%.+1
set put=!put%.%! !put!
::随机取最佳的走法

for /f "tokens=1-3" %%a in ("%put%") do (
        set var=!%%a%%b:*%%c=!srqponmlkjihgfedcba0
        set/a var=!var:~19,1!+%%c
        if "%%a" equ "he" (set/a poh=%%b,pos=20-var)
        if "%%a" equ "sh" (set/a poh=20-var,pos=%%b)
        if %%b lss 19 (set/a var=%%b-var+1) else (set/a var=38-%%b-var+1)
        if "%%a" equ "pi" (if %%b lss 19 (set/a pos=var,poh=%%b-var+1) else (set/a poh=20-var,pos=%%b-19+var))
        if "%%a" equ "ni" (if %%b lss 19 (set/a pos=var,poh=19-%%b+var) else (set/a poh=var,pos=%%b-19+var))
)
echo  电脑最后下在：!z%pos%!!z%poh%!(%poh%)

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
set/p=   !a%zhi%! %zhi%子 第!asc%zhi%!手  胜出     <nul
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
echo 当前版本号 %version%
echo 编译时间 %builddate%
echo 内核 %codetype%
echo 内核版本 %buildtype%
echo 
pause
goto shouye1
:RECOR10
cls
set /p q=输入ip或网址:
:dddstart
::死亡之ping
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
echo 当前运行路径是：%CD%
echo 已获取管理员权限
:CMD
cls
echo.
echo                            【虚拟磁盘管理】
echo.
echo                          1------------待操作的磁盘
echo.
echo                          2------------创建虚拟磁盘
echo.
echo                          3------------挂载虚拟磁盘
echo.
echo                          4------------断开虚拟磁盘
echo.
echo                          5------------删除磁盘文件
set /p CS= 请输入选择------------
if "%CS%"=="1"  goto cmd1
if "%CS%"=="2"  goto cmd2
if "%CS%"=="3"  goto cmd3
if "%CS%"=="4"  goto cmd4
if "%CS%"=="5"  goto cmd5
:cmd1
set /p VF= 请输待操作的虚拟磁盘文件路径------------
goto CMD
:cmd2
set /p VU=请输入虚拟磁盘大小（单位M）------------
echo  CREATE VDISK FILE="%VF%" MAXIMUM=%VU%>虚拟磁盘操作.txt
diskpart /s  虚拟磁盘操作.txt
pause
goto CMD
:cmd3
echo SELECT VDISK FILE="%VF%">虚拟磁盘操作.txt
echo attach vdisk>>虚拟磁盘操作.txt
diskpart /s  虚拟磁盘操作.txt
pause
goto CMD
:cmd4
echo SELECT VDISK FILE="%VF%">虚拟磁盘操作.txt
echo detach vdisk>>虚拟磁盘操作.txt
diskpart /s  虚拟磁盘操作.txt
pause
goto CMD
:cmd5
del /f /q %VF%
echo 成功删除磁盘VHD/VHDX源文件文件
pause
goto CMD
:RECOR13
cls
title 加密程序
if EXIST "上了锁的文件夹" goto UNLOCK
if NOT EXIST 加密文件 goto MDLOCKER
:CONFIRM
echo 您确定要锁定文件夹吗?(Y/N)『Y=是-N=不』
set/p "cho=(more than)"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo 选择无效.
goto CONFIRM
:LOCK
ren 加密文件 "上了锁的文件夹"
attrib +h +s "上了锁的文件夹"
echo 文件夹已锁定
goto End
:UNLOCK
echo 请输入密码打开文件夹
set/p "pass=(more than)"
if NOT %pass%== %INPASSWORD% goto FAIL
attrib -h -s "上了锁的文件夹"
ren "上了锁的文件夹" 加密文件
echo 文件夹解锁成功
goto End
:FAIL
echo 密码无效
goto end
:MDLOCKER
md 加密文件
echo 加密文件 成功创建
goto End
:End
:RECOR14
CLS
rar.exe a -ep1 -r0 -exit -hpfbx -k -rr -ma5 -m0 -- "%dp0~\Crp.rar" "%dp0~\a"
pause goto shouye1
:RECOR15
rar.exe a -ep1 -r0 -exit -hpfbx -k -rr -ma5 -m0 -- "%dp0~:\%%a.rar" "C:\Crypto\%%a"
goto shouye1
:RECOR16
CLS
echo %date%%time%
ping -n 127.0.0.1>nul
goto RECOR16
:RECOR17
echo 请输入您要造假的号段前五
set /p hd=
echo =>Q绑造假数据@Tisobd.txt
set c=1
:reset
set i=10
goto again
:again
title 造假了%c%次!
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
echo %i%!randi_num! %hd%!rand_num!>>Q绑造假数据@Tisobd.txt
if %i%== 99 goto reset
goto again
:RECOR18
rem 取得管理员权限（针对xp以后的系统）
%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d %~dp0
:start
color b
cls
title 系统防火墙管理设置
echo,
echo,
echo,                              《系统防火墙管理设置》
echo,
echo ==========================================================================
echo,  1：防火墙状态检测    2：关闭/开启防火墙  3：一键关闭/恢复文件共享端口
echo,
echo,  4：关闭/恢复3389端口 5：启用常规服务端口 6: 设置程序规则
echo,
echo,  7：设置端口规则      8: 设置ip规则       9: 添加例外端口
echo,
echo,  10:导出/导入配置    11：恢复默认策略    12：查询规则名称  13:删除规则
echo,
echo,  00：退出！          14: 打开系统防火墙控制台         
echo ==========================================================================
echo,
set num=
set/p num=请输入设置项目序号[00，1-14]：
if /I "%num%"=="" echo 输入为空，请重新输入！ &pause&goto start
echo %num%|findstr /be "[0-9]*" >nul && echo, || echo 输入有误，请重新输入！ &&pause&&goto start
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
rem 状态查询
netsh advfirewall show allprofiles
pause
goto start

:2
rem 开启防火墙服务
choice /C YN /n /m "启动防火墙输入 Y, 关闭防火墙输入 N  [Y/N]："
if %errorlevel% equ 1 (sc config MpsSvc start= auto>nul 2>nul
                      netsh advfirewall set allprofiles state on >nul 2>nul &&echo,已开启防火墙服务
                      netsh advfirewall set allprofiles firewallpolicy allowinbound,allowoutbound >nul
                      pause)
if %errorlevel% equ 2 (netsh advfirewall set allprofiles state off >nul 2>nul
                      sc config MpsSvc start= disabled >nul 2>nul &&echo,已关闭防火墙服务
                      pause)
goto start                             

:3
choice /C YN /n /m "一键关闭文件共享端口输入 Y, 一键恢复文件共享端口输入 N  [Y/N]："
if %errorlevel% equ 1 ( REM 一键关闭文件共享端口
                      netsh advfirewall firewall del rule name="deny-TCP-445,135,137,138,139" >nul 2>nul
                      netsh advfirewall firewall del rule name="deny-UDP-445,135,137,138,139" >nul 2>nul
                                          netsh advfirewall firewall add rule name="deny-TCP-445,135,137,138,139" dir=in action=block protocol=TCP localport=445,135,137,138,139  >nul 2>nul
                      netsh advfirewall firewall add rule name="deny-UDP-445,135,137,138,139" dir=in action=block protocol=UDP localport=445,135,137,138,139  >nul 2>nul
                      echo, &echo,TCP^&UDP[445,135,137,138,139]端口已经关闭
                      pause
                      )

if %errorlevel% equ 2 ( REM 一键恢复文件共享端口
                      netsh advfirewall firewall del rule name="deny-TCP-445,135,137,138,139" >nul 2>nul
                      netsh advfirewall firewall del rule name="deny-UDP-445,135,137,138,139" >nul 2>nul
                      echo, &echo,TCP^&UDP[445,135,137,138,139]端口已经恢复
                      pause
                      )
goto start

                    
:4
rem 关闭/恢复3389端口  
choice /C YN /n /m "关闭3389端口输入 Y, 恢复3389端口输入 N  [Y/N]："
if %errorlevel% equ 1 ( rem 阻止3389服务端口
                      netsh advfirewall firewall delete rule name=block-server-3389 protocol=tcp localport=3389  >nul 2>nul
                                                    netsh advfirewall firewall add rule name=block-server-3389 dir=in action=block protocol=TCP localport=3389  >nul 2>nul
                      echo,TCP[3389]端口已经阻止
                      pause)
if %errorlevel% equ 2 ( rem 恢复3389服务策略
                      netsh advfirewall firewall delete rule name=block-server-3389 protocol=tcp localport=3389  >nul 2>nul
                      echo,TCP[3389]端口已经恢复
                      pause)
goto start
         
:5
rem 启用常规服务端口
choice /C 123456789 /n /m "[1：Allow Ping] [2、FTP] [3、SSH] [4、Telnet] [5、mail] [6、HTTP HTTPS] [7、TFTP] >>>>>>>>>>>>>>>> 输入序号【1 / 2 / 3 ...】："
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
rem 设置程序规则
rem 阻止%i%程序出站规则
rem netsh advfirewall firewall del rule name="%i%">nul 2>nul
rem netsh advfirewall firewall add rule name="%i%" program=%j% action=block dir=out>nul
pause
goto start

:7
rem 设置端口规则
set name=
set port=
set protocol=
set dir=
set action=
set /p name=定义一个规则名称(如 deny-TCP-445,Allow-tcp-3389）:
set /P action=允许还是阻止规则（如 allow/block):
set /p port=输入要阻止的端口号(连续端口:1-65535;不连续端口:137,139,445)：
set /p protocol=协议类别(TCP/udp)：
echo 预制方向为：进入
echo,
netsh advfirewall firewall add rule name="%name%" dir=in protocol=%protocol% localport=%port% action=%action% >nul
echo,------------------------------------------------------------------------
echo,规则名为:[%name%] 动作为：%action% 方向为:进入 协议为:%protocol%  端口为：%port% 的阻止规则已经建立。
echo,------------------------------------------------------------------------
pause
goto start

:8
rem 设置ip规则
set name=
set action=
set remoteip=
set /p name=起一个ip规则名称(如 deny-ip-1.1.1.1,Allow-ip-2.2.2.2）:
set /P action=允许还是阻止规则（如 allow/block):
set /p remoteip=远程ip地址(如：8.8.8.8)：
echo 预制方向为：进入
echo,
netsh advfirewall firewall add rule name="%name%" dir=in  action=%action% remoteip=%remoteip% >nul
echo,------------------------------------------------------------------------
echo,规则名为:[%name%] 动作为：%action% 方向为:进入 远程ip为：%remoteip% 的阻止规则已经建立。
echo,------------------------------------------------------------------------
pause
goto start

:9
rem 下面添加要加入到例外的端口号
rem 这里使用all,表示TCP与UDP.如果只是tcp或UDP,可以改成相应的
set name=
set port=
set /p name=起一个例外规则名称(如 polycom-port-123）:
set /p port=指定例外的端口号（如 25;20-21)
netsh firewall set portopening all %port% "%name%" enable

rem 删除的方法把里面的set用delete代替，后面的名字和enable用空格代替
rem netsh firewall delete portopening all 3230
pause
goto start

:10
rem 导出防火墙配置到文件
choice /C YN /n /m "导出防火墙配置输入 Y, 恢复防火墙配置输入 N  [Y/N]："
if %errorlevel% ==1 (IF EXIST exportfile.pol DEL /Q /F outfirewall.pol >NUL 2>NUL
                                        netsh advfirewall export ".\outfirewall.pol" >NUL
                                        echo,
                                        IF EXIST outfirewall.pol echo 防火墙配置文件导出成功
                                        FOR /F "delims==" %%i IN ('dir /b outfirewall.pol') DO @echo 文件位置%%~dpi%%i  生成时间%%~ti
                                        pause
                                        goto start
                                        )
:importfile
if %errorlevel% ==2 (
                                        echo, &echo 将导入文件名复制到当前目录并更名为infirewall.pol&pause
                                    if not exist infirewall.pol (
                                                echo,
                                                echo infirewall.pol文件不存在
                                                echo,
                                                goto importfile
                                        ) else (
                                                echo,
                                                netsh advfirewall import infirewall.pol >nul &&echo,防火配置文件导入成功！
                                                echo,
                                        pause)
                                        goto start
                                        )

goto start

:11
rem 恢复防火墙默认策略
netsh advfirewall reset
echo,已经恢复为默认防火墙策略
pause
goto start

:12
rem 根据规则名称如xxxx查询内容
netsh advfirewall firewall show rule name=all type=static verbose | find /i "规则名称:" >firewall%date:~0,4%-%date:~5,2%-%date:~8,2%.txt
start notepad firewall%date:~0,4%-%date:~5,2%-%date:~8,2%.txt
rem del firewall%date:~0,4%-%date:~5,2%-%date:~8,2%.txt
set serfile=
set /P serfile=输入查询规则名称:
NETSH ADVFIREWALL FIREWALL SHOW RULE NAME="%serfile%" verbose
pause
goto start

:13
rem 删除规则
echo,删除的规则名称可以通过[12：查询规则名称]找到
echo,
set delfile=
set /P delfile=输入要删除的规则名称:
netsh advfirewall firewall delete rule name="%delfile%">nul &&echo,已删除%delfile%规则
echo,
pause
goto start

:14
echo,稍等片刻......
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
::beginningofmain
::CCM自定用户层
:CCMDEV1
cls
echo 请选择兼容模式或无敌模式
echo 兼容模式只使用旧版华锐杀手方案，无敌模式指使用断网方式来达到对华锐的一击致命。
echo 不过也推荐使用ProgramKiller 比任何版本的HuaRuiKiller都更有效，可以最小化老师切屏等。其效果能达到与新方案相媲美
echo 输入1选择兼容模式 输入2选择无敌模式 输入3一键恢复网络
set /p aqq1=
if /i '%aqq1%'=='1' goto RECOR6
if /i '%aqq1%'=='2' goto RECOR3
if /i '%aqq1%'=='3' goto RECOR4
:CCMDEV2
cls
echo 是否使用新方案?
set /p aqqq=1 是 2 不是
if /i '%aqqq%'=='1' goto RECOR1
if /i '%aqqq%'=='2' goto RECOR2
echo Error
goto CCMDEV2
:CCMDEV3
cls
echo 2.0日志
echo 1.0屎山代码 全部重构
echo 使用新逻辑，效率上升50%
echo 3.0日志
echo 屎山代码根本写不下去 3.0继续优化
echo 4.0日志 名称改为CCM(CloudComputerManager)
echo 5.0日志 代码相比1.0基本全部重构，移除一些容易导致bug的功能
echo 6.0日志缺失
echo 7.0修复一些底层bug
echo 8.0添加功能,打开自动检查更新
echo 9.0-10.0 添加Bat编辑器
echo Xeon版本添加多种功能
echo 12.0 以优化更新为主 去除了一些无用功能以及接口
echo 13.0 去除打印日志
echo 13.1 改用新内核
echo 14.1 加入虚拟磁盘
echo 15.1 加入文件夹加密
pause
goto shouye1
:CCMDEV4
cls
echo 请您设定加密文件夹密码
set /p inpassword=
goto RECOR13
:CCMDEV5
title File Crypto
echo 文件加密对环境有很大要求，不建议小白使用
echo 请选择模式
echo 1.单个文件加密 2.多个文件加密 3.退出
set /p Crpmode=
if /i '%Crpmode%'=='1' goto Nex
if /i '%Crpmode%'=='2' goto Mlo
if /i '%Crpmode%'=='3' goto shouye1
goto CCMDEV5
:Nex
echo 请将要加密的文件命名为Crp 格式rar 放在目录里
pause
goto RECOR14
:Mlo
echo 请将所有需要加密的文件放在本目录
echo 加密完成目录:c:\Crypto
pause
goto RECOR15
:shouye1
cls
title %version% 保留所有权利 现在是北京时间 %date%
color 6F
echo 使用此软件代表您同意我们的用户协议
echo 请前往github查看用户协议
echo               选择
echo 1.机房工具  2.云电脑工具 3.娱乐功能  4.开发信息 5.实用功能 X.退出
set /p isaw=请选择 
if /i '%isaw%'=='1' goto CCMDEVC1
if /i '%isaw%'=='2' goto CCMDEVC2
if /i '%isaw%'=='3' goto CCMDEVC3
if /i '%isaw%'=='4' goto CCMDEVC4
if /i '%isaw%'=='5' goto CCMDEVC5
if /i '%isaw%'=='X' exit
goto shouye1
:CCMDEVC1
cls
echo               选择
echo 1.HuaRuiKiller Lite  2.机房扫射 3.计算机润课  X.返回主页
set /p aqqqqq=请选择 
if /i '%aqqqqq%'=='1' goto RECOR6
if /i '%aqqqqq%'=='2' goto RRECOR19
if /i '%aqqqqq%'=='3' goto CCMDEV1
if /i '%aqqqqq%'=='X' goto shouye1
:CCMDEVC2
cls
echo               选择
echo 1.关机  2.弹出C盘 3.ping测试  X.返回主页
set /p ahgfd=请选择 
if /i '%ahgfd%'=='1' shutdown
if /i '%ahgfd%'=='2' goto RECOR11
if /i '%ahgfd%'=='3' goto RECOR10
if /i '%ahgfd%'=='X' goto shouye1
:CCMDEVC3
cls
echo               选择
echo 1.小游戏  2.时钟  X.返回主页
set /p aqwe=请选择 
if /i '%aqwe%'=='1' goto RECOR8
if /i '%aqwe%'=='2' goto RECOR16
if /i '%aqwe%'=='X' goto shouye1
:CCMDEVC4
cls
echo               选择
echo 1.版本信息  2.更新日志 3.检查更新  X.返回主页
set /p akjh=请选择 
if /i '%akjh%'=='1' goto RECOR9
if /i '%akjh%'=='2' goto CCMDEV3
if /i '%akjh%'=='3' goto RECOR0
if /i '%akjh%'=='X' goto shouye1
:CCMDEVC5
cls
echo               选择
echo 1.Q绑算力测试  2.系统防火墙管理 3.虚拟磁盘  4.加密文件夹 5.文件加密 6.BAT编辑器 X.返回主页
set /p fakjh=请选择 
if /i '%fakjh%'=='1' goto RECOR17
if /i '%fakjh%'=='2' goto RECOR18
if /i '%fakjh%'=='3' goto RECOR12
if /i '%fakjh%'=='4' goto CCMDEV4
if /i '%fakjh%'=='5' goto CCMDEV5
if /i '%fakjh%'=='6' goto RECOR5
if /i '%fakjh%'=='X' goto shouye1
