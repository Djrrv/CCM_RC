::RECORE-DEV
::BeginOFCORE
:: 1，2关机 3.关网4开网5bat编辑器
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
::beginningofmain
:shouye1
cls
title %version% 保留所有权利 现在是北京时间 %date%
color 6F
echo 使用此软件代表您同意我们的用户协议
echo 请前往github查看用户协议
echo                                                            选择
echo        1.检查更新 2.小游戏 3.HuaRuiKiller Lite  4.关机 5.弹出c盘 6.更新日志 7.网络测压 8.Bat编辑器(试运行) 9.一键逃计算机课 10.查看版本号 11.虚拟磁盘 12.加密文件夹  13.文件加密 X.退出
set /p a=请选择 
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