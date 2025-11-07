//HEADER

    // Thanks to moudey for creating Shell
    // https://github.com/moudey/Shell
    //
    // and RubicBG for all the useful snippets and support
    // https://github.com/RubicBG/Nilesoft-Shell-Snippets/

    //

    //HIDE LIST



    //HIDE LIST

//HEADER

//

//BODY

    //TOP
        menu(title='Top' tip='A placeholder for context menu entries in the top area' type='taskbar' expanded='true' position='top')
        {



        } //menu(title='top')
    //TOP

    //

    //MIDDLE
        menu(title='Middle' tip='A placeholder for context menu entries in the middle area' type='taskbar' expanded='true' position='middle')
        {

            //WINDOWS INTERNAL FUNCTIONS
                menu(title='Windows Internal Context Menu Entries' image=\uE25F /*https://nilesoft.org/glyphs/e25f*/ tip='A placeholder for the Windows internal context menu entries' type='taskbar' expanded='true' position='middle')
                {

                    //TASKBAR SETTINGS
                        item(title='Taskbar settings' image=\uE206 /*https://nilesoft.org/glyphs/e206*/ type='taskbar' separator='after' position='middle'
                        cmd='ms-settings:taskbar')
                    //TASKBAR SETTINGS

                    //MULTITASKING SETTINGS
                        item(title='Multitasking settings' image=\uE204 /*https://nilesoft.org/glyphs/e204*/ type='taskbar' separator='after' position='middle'
                        cmd='ms-settings:multitasking')
                    //MULTITASKING SETTINGS

                } //menu(title='Windows Internal Context Menu Entries')
            //WINDOWS INTERNAL FUNCTIONS

        } //menu(title='middle')
    //MIDDLE

    //

    //BOTTOM
        menu(title='Bottom' image=\uE1E5 tip='A placeholder for context menu entries in the bottom area' type='taskbar' expanded='true' position='bottom')
        {

            separator()

            //MORE OPTIONS
                menu(title='More options' image=\uE167 /*https://nilesoft.org/glyphs/e167*/ type='taskbar' position='bottom')
                {

                    //WINDOWS
                        menu(title='Windows' image=\uE1B6 /*https://nilesoft.org/glyphs/e1b6*/ type='taskbar' separator='both')
                        {

                            //OS INFORMATION
                                menu(title='OS Information' expanded='true' type='taskbar')
                                {

                                    //LOGIC
                                        $ver_short = reg.get('HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion', 'DisplayVersion')
                                    //LOGIC

                                    //WINDOWS VERSION
                                        item(title=sys.ver.name image=\uE134 /*https://nilesoft.org/glyphs/e134*/ tip='Click to open System Information dialog' type='taskbar'
                                        cmd='msinfo32.exe')
                                    //WINDOWS VERSION

                                    //WINDOWS BUILD
                                        item(title='OS: @sys.ver [@ver_short]' image=\uE134 /*https://nilesoft.org/glyphs/e134*/ tip='Click to open About dialog' type='taskbar'
                                        cmd='winver.exe')
                                    //WINDOWS BUILD

                                } //menu(title='OS Information')
                            //OS INFORMATION

                            separator()

                            //TOOLS
                                menu(title='Tools' image=\uE0F6 /*https://nilesoft.org/glyphs/e0f6*/ expanded='true' type='taskbar')
                                {

                                    //TASK MANAGER
                                        item(title='Task Manager' image=\uE159 /*https://nilesoft.org/glyphs/e159*/ keys='Ctrl+Shift+Esc' type='taskbar'
                                        cmd='taskmgr.exe')
                                    //TASK MANAGER

                                    //DEVICE MANAGER
                                        item(title='Device Manager' image=\uE0D1 /*https://nilesoft.org/glyphs/e0d1*/ type='taskbar'
                                        cmd='devmgmt.msc')
                                    //DEVICE MANAGER

                                    //REGISTRY EDITOR
                                        item(title='Registry Editor' image=\uE142 /*https://nilesoft.org/glyphs/e142*/ type='taskbar'
                                        cmd='regedit.exe')
                                    //REGISTRY EDITOR

                                    //GROUP POLICY EDITOR
                                        item(title='Group Policy Edit' image=\uE202 /*https://nilesoft.org/glyphs/e202*/ type='taskbar'
                                        cmd='gpedit.msc')
                                    //GROUP POLICY EDITOR

                                    //SERVICES
                                        item(title='Services' image=\uE0C5 /*https://nilesoft.org/glyphs/e0c5*/ type='taskbar'
                                        cmd='services.msc')
                                    //SERVICES

                                    //TASK SCHEDULER
                                        item(title='Task Scheduler' image=\uE1F2 /*https://nilesoft.org/glyphs/e1f2*/ type='taskbar'
                                        cmd='taskschd.msc /s')
                                    //TASK SCHEDULER

                                    //EVENT VIEWER
                                        item(title='Event Viewer' image=\uE0D4 /*https://nilesoft.org/glyphs/e0d4*/ type='taskbar'
                                        cmd='eventvwr.msc /s')
                                    //EVENT VIEWER

                                    //MS CONFIG
                                        item(title='MS Config' image=\uE0F6 /*https://nilesoft.org/glyphs/e0f6*/ type='taskbar'
                                        cmd='msconfig.exe')
                                    //MS CONFIG

                                    //SHARED FOLDERS
                                        item(title='Shared Folders' image=\uE0E3 /*https://nilesoft.org/glyphs/e0e3*/ type='taskbar'
                                        cmd='fsmgmt.msc')
                                    //SHARED FOLDERS

                                    //DISK MANAGEMENT
                                        item(title='Disk Management' image=\uE15E /*https://nilesoft.org/glyphs/e15e*/ type='taskbar'
                                        cmd='diskmgmt.msc')
                                    //DISK MANAGEMENT

                                    //WINDOWS TERMINAL
                                        item(title='Windows Terminal' image=\uE0AC /*https://nilesoft.org/glyphs/e0ac*/ type='taskbar'
                                        cmd='wt.exe')
                                    //WINDOWS TERMINAL

                                    //WINDOWS DEFENDER
                                        item(title='Windows Defender' image=\uE1B5 /*https://nilesoft.org/glyphs/e1b5*/ type='taskbar'
                                        cmd='explorer.exe windowsdefender:')
                                    //WINDOWS DEFENDER

                                    //WINDOWS FIREWALL
                                        item(title='Windows Firewall' image=\uE1CF /*https://nilesoft.org/glyphs/e1cf*/ type='taskbar'
                                        cmd='WF.msc')
                                    //WINDOWS FIREWALL

                                    //CONTROL PANEL
                                        item(title='Control Panel' image=\uE0A0 /*https://nilesoft.org/glyphs/e0a0*/ type='taskbar'
                                        cmd='shell:::{5399E694-6CE5-4D6C-8FCE-1D8870FDCBA0}')
                                    //CONTROL PANEL

                                    //WINDOWS SETTINGS
                                        item(title='Windows Settings' image=\uE0F3 /*https://nilesoft.org/glyphs/e0f3*/ keys='Win+I' type='taskbar'
                                        cmd='ms-settings:')
                                    //WINDOWS SETTINGS

                                } //menu(title='Tools')
                            //TOOLS

                            separator()

                            //LOCATIONS QUICK ACCESS
                                menu(title='Places' image=\uE0E7 /*https://nilesoft.org/glyphs/e0e7*/ type='taskbar')
                                {

                                    //Title
                                        item(title=' @"\t"OS' vis=label type='taskbar')
                                    //Title

                                    //C:\Windows
                                        item(title='Windows' image=inherit cmd=sys.dir type='taskbar')
                                    //C:\Windows

                                    //C:\WINDOWS\system32
                                        item(title='System' image=inherit cmd=sys.bin type='taskbar')
                                    //C:\WINDOWS\system32

                                    //C:\Program Files
                                        item(title='Program Files' image=inherit cmd=sys.prog type='taskbar')
                                    //C:\Program Files

                                    //C:\Program Files (x86)
                                        item(title='Program Files x86' image=inherit cmd=sys.prog32 type='taskbar')
                                    //C:\Program Files (x86)

                                    //C:\ProgramData
                                        item(title='ProgramData' image=inherit cmd=sys.programdata type='taskbar')
                                    //C:\ProgramData

                                    //C:\users
                                        item(title='Users' image=inherit cmd=sys.users type='taskbar')
                                    //C:\users

                                    separator()

                                    //Title (Username@PC Name)
                                        item(title=' @"\t"@user.name@@@sys.name' vis=label type='taskbar')
                                    //Title (Username@PC Name)

                                    //%USERPROFILE%
                                        item(title='@user.name' image=inherit cmd=user.dir type='taskbar')
                                    //%USERPROFILE%

                                    //%USERPROFILE%\Desktop
                                        item(title='Desktop' image=inherit cmd=user.desktop type='taskbar')
                                    //%USERPROFILE%\Desktop

                                    //%USERPROFILE%\Downloads
                                        item(title='Downloads' image=inherit cmd=user.downloads type='taskbar')
                                    //%USERPROFILE%\Downloads

                                    //%USERPROFILE%\Documents
                                        item(title='Documents' image=inherit cmd=user.documents type='taskbar')
                                    //%USERPROFILE%\Documents

                                    //%USERPROFILE%\AppData
                                        item(title='AppData' image=inherit cmd=user.appdata type='taskbar')
                                    //%USERPROFILE%\AppData

                                    //%USERPROFILE%\Local\Temp
                                        item(title='Temp' image=inherit cmd=user.temp type='taskbar')
                                    //%USERPROFILE%\Local\Temp

                                }
                            //LOCATIONS QUICK ACCESS

                            separator()

                            //SETTINGS QUICK ACCESS
                                menu(title='Settings' image=\uE0F3 /*https://nilesoft.org/glyphs/e0f3*/ type='taskbar')
                                {

                                    //BLUETOOTH AND DEVICES
                                        menu(title='Bluetooth and Devices' image=\uE0EC /*https://nilesoft.org/glyphs/e0ec*/ type='taskbar')
                                        {

                                            //OPEN BLUETOOTH AND DEVICES SETTINGS PAGE
                                                item(title='Open Bluetooth and Devices settings page' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:devices')
                                            //OPEN BLUETOOTH AND DEVICES SETTINGS PAGE

                                            separator()

                                            //DEVICES
                                                item(title='Devices' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:connecteddevices')
                                            //DEVICES

                                            //MOBILE DEVICES
                                                item(title='Mobile devices' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:mobile-devices')
                                            //MOBILE DEVICES

                                            //NEARBY SHARING
                                                item(title='Nearby sharing' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:crossdevice')
                                            //NEARBY SHARING

                                            //PRINTERS AND SCANNERS
                                                item(title='Printers and scanners' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:printers')
                                            //PRINTERS AND SCANNERS

                                            //CAMERAS
                                                item(title='Cameras' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:camera')
                                            //CAMERAS

                                            //MOUSE
                                                item(title='Mouse' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:mousetouchpad')
                                            //MOUSE

                                            //TOUCHPAD
                                                item(title='Touchpad' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:devices-touchpad')
                                            //TOUCHPAD

                                            //PEN AND WINDOWS INK
                                                item(title='Pen and Windows Ink settings' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:pen')
                                            //PEN AND WINDOWS INK

                                        } //menu(title='Bluetooth and Devices')
                                    //BLUETOOTH AND DEVICES

                                    separator()

                                    //NETWORK AND INTERNET
                                        menu(title='Network and internet' image=\uE0EC /*https://nilesoft.org/glyphs/e0ec*/ type='taskbar')
                                        {

                                            //OPEN NETWORK AND INTERNET SETTINGS PAGE
                                                item(title='Open Network and Internet settings page' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:network')
                                            //OPEN NETWORK AND INTERNET SETTINGS PAGE

                                            separator()

                                            //WI-FI
                                                item(title='Wi-Fi' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:network-wifi')
                                            //WI-FI

                                            //ETHERNET
                                                item(title='Ethernet' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:network-ethernet')
                                            //ETHERNET

                                            //MOBILE HOTSPOT
                                                item(title='Mobile hotspot' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:network-mobilehotspot')
                                            //MOBILE HOTSPOT

                                            //AIRPLANE MODE
                                                item(title='Airplane mode' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:network-airplanemode')
                                            //AIRPLANE MODE

                                            //VPN
                                                item(title='VPN' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:network-vpn')
                                            //VPN

                                            //PROXY
                                                item(title='Proxy' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:network-proxy')
                                            //PROXY

                                            separator()

                                            //ADVANCED NETWORK SETTINGS
                                                item(title='Advanced network settings' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:network-advancedsettings')
                                            //ADVANCED NETWORK SETTINGS

                                        } //menu(title='Network and internet')
                                    //NETWORK AND INTERNET

                                    separator()

                                    //SOUND
                                        menu(title='Sound' image=\uE0EC /*https://nilesoft.org/glyphs/e0ec*/ type='taskbar')
                                        {

                                            //OPEN SOUND SETTINGS PAGE
                                                item(title='Open Sound settings page' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:sound')
                                            //OPEN SOUND SETTINGS PAGE

                                            separator()

                                            //SOUND DEVICES
                                                item(title='Sound devices' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:sound-devices')
                                            //SOUND DEVICES

                                            //VOLUME MIXER
                                                item(title='Volume mixer' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:apps-volume')
                                                //VOLUME MIXER

                                            separator()

                                            //NOTIFICATIONS
                                                item(title='Notifications' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:notifications')
                                            //NOTIFICATIONS

                                            //FOCUS
                                                item(title='Focus' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:quiethours')
                                            //FOCUS

                                        } //menu(title='Sound')
                                    //SOUND

                                    separator()

                                    //POWER
                                        item(title='Power settings' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                        cmd='ms-settings:powersleep')
                                    //POWER

                                    separator()

                                    //TIME AND LANGUAGE
                                        menu(title='Time and Language' image=\uE0EC type='taskbar')
                                        {

                                            //DATE AND TIME
                                                item(title='Date and Time' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:dateandtime')
                                            //DATE AND TIME

                                            //LANGUAGE AND REGION
                                                item(title='Language and Region' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:regionlanguage')
                                            //LANGUAGE AND REGION

                                            //TYPING
                                                item(title='Typing' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:typing')
                                            //TYPING

                                            //SPEECH
                                                item(title='Speech' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:speech')
                                            //SPEECH

                                        } //menu(title='Time and Language')
                                    //TIME AND LANGUAGE

                                    separator()

                                    //APPS
                                        menu(title='Apps' image=\uE0EC /*https://nilesoft.org/glyphs/e0ec*/ type='taskbar')
                                        {

                                            //OPEN APPS SETTINGS PAGE
                                                item(title='Open Apps settings page' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:apps')
                                            //OPEN APPS SETTINGS PAGE

                                            separator()

                                            //INSTALLED APPS
                                                item(title='Installed apps' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:installed-apps')
                                            //INSTALLED APPS

                                            //ADVANCED APP SETTINGS
                                                item(title='Advanced app settings' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:advanced-apps')
                                            //ADVANCED APP SETTINGS

                                            //DEFAULT APPS
                                                item(title='Default apps' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:defaultapps')
                                            //DEFAULT APPS

                                            //ACTIONS
                                                item(title='Actions' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:appactions')
                                            //ACTIONS

                                            //APPS FOR WEBSTIES
                                                item(title='Apps for websites' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:appsforwebsites')
                                            //APPS FOR WEBSTIES

                                            //STARTUP
                                                item(title='Startup' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:startupapps')
                                            //STARTUP

                                        } //menu(title='Apps')
                                    //APPS

                                    separator()

                                    //PERSONALISATION
                                        menu(title='Personalisation' image=\uE0EC /*https://nilesoft.org/glyphs/e0ec*/ type='taskbar')
                                        {

                                            //OPEN PERSONALISATION SETTINGS PAGE
                                                item(title='Open Personalisation settings page' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:personalization')
                                            //OPEN PERSONALISATION SETTINGS PAGE

                                            separator()

                                            //BACKGROUND
                                                item(title='Background' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:personalization-background')
                                            //BACKGROUND

                                            //COLOURS
                                                item(title='Colours' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:personalization-colors')
                                            //COLOURS

                                            //THEMES
                                                item(title='Themes' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:themes')
                                            //THEMES

                                            //FONTS
                                                item(title='Fonts' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:fonts')
                                            //FONTS

                                            //LOCK SCREEN
                                                item(title='Lock screen' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:personalization-lockscreen')
                                            //LOCK SCREEN

                                            //START
                                                item(title='Start' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:personalization-start')
                                            //START

                                            //TASKBAR
                                                item(title='Taskbar' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:taskbar')
                                            //TASKBAR

                                        } //menu(title='Personalisation')
                                    //PERSONALISATION

                                    separator()

                                    //DISPLAY SETTINGS
                                        menu(title='Display settings' image=\uE0EC /*https://nilesoft.org/glyphs/e0ec*/ type='taskbar')
                                        {

                                            //OPEN DISPLAY SETTINGS PAGE
                                                item(title='Open Display settings page' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:display')
                                            //OPEN DISPLAY SETTINGS PAGE

                                            separator()

                                            //NIGHT LIGHT
                                                item(title='Night light' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:nightlight')
                                            //NIGHT LIGHT

                                            //HDR
                                                item(title='HDR' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:display-hdr')
                                            //HDR

                                            //VIDEO PLAYBACK
                                                item(title='Video playback' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:videoplayback')
                                            //VIDEO PLAYBACK

                                            separator()

                                            //ADVANCED DISPLAY SETTINGS
                                                item(title='Advanced display settings' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:advanceddisplay')
                                            //ADVANCED DISPLAY SETTINGS

                                            //ADVANCED GRAPHICS SETTINGS
                                                item(title='Advanced graphics settings' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:display-advancedgraphics')
                                            //ADVANCED GRAPHICS SETTINGS

                                        } //menu(title='Display settings')
                                    //DISPLAY SETTINGS

                                    separator()

                                    //WINDOWS UPDATE
                                        menu(title='Windows Update' image=\uE0EC type='taskbar')
                                        {

                                            //OPEN WINDOWS UPDATE PAGE
                                                item(title='Open Windows Update page' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:windowsupdate')
                                            //OPEN WINDOWS UPDATE PAGE

                                            separator()

                                            //CHECK FOR UPDATES
                                                item(title='Check for updates' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd-line='/c USOClient StartInteractiveScan & start ms-settings:windowsupdate'
                                                window='hidden')
                                            //CHECK FOR UPDATES

                                            //UPDATE HISTORY
                                                item(title='Update history' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:windowsupdate-history')
                                            //UPDATE HISTORY

                                            separator()

                                            //ADVANCED OPTIONS
                                                item(title='Advanced options' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar'
                                                cmd='ms-settings:windowsupdate-options')
                                            //ADVANCED OPTIONS

                                        } //menu(title='Windows Update')
                                    //WINDOWS UPDATE

                                } //menu(title='Settings quick access')
                            //SETTINGS QUICK ACCESS

                        } //menu(title='Windows')
                    //WINDOWS

                    //NILESOFT
                        menu(title='Nilesoft' image=\uE249 /*https://nilesoft.org/glyphs/e249*/ type='taskbar' separator='both')
                        {

                            //APP VERSION NUMBER
                                item(title="Version\t"+@app.ver image=\uE24A /*https://nilesoft.org/glyphs/e24a*/ type='taskbar'
                                cmd='https://nilesoft.org/download')
                            //APP VERSION NUMBER

                            separator()

                            //OPEN NILESOFT SHELL MANAGER APP
                                item(title="Open Nilesoft Shell manager app" image=\uE0A4 /*https://nilesoft.org/glyphs/e0a4*/ type='taskbar'
                                admin cmd='@app.exe')
                            //OPEN NILESOFT SHELL MANAGER APP

                            separator()

                            //RESTART EXPLORER
                                item(title="Restart Explorer" image=\uE0E4 /*https://nilesoft.org/glyphs/e0e4*/ type='taskbar'
                                cmd=command.restart_explorer)
                            //RESTART EXPLORER

                            separator()

                            //RELOAD NILESOFT SHELL
                                item(title='Reload Nilesoft Shell' image=\uE28F /*https://nilesoft.org/glyphs/e28f*/ tip='This will unregister and re-register the shell.dll, restarting explorer multiple times in the process, to completely reload Nilesoft Shell.' type='taskbar'
                                cmd-line='/c call @quote(app.exe) -s -u -t -restart & del /f /q @quote('@app.dir\shell.log') & timeout /t 3 /nobreak & call @quote(app.exe) -s -r -t -restart'
                                window='hidden')
                            //RELOAD NILESOFT SHELL

                            separator()

                            //MODE
                                menu(title='Mode' image=\uE12E /*https://nilesoft.org/glyphs/e12e*/ type='taskbar' visibility=if(!sys.is11, 'disable'))
                                {

                                    //NILESOFT ONLY
                                        item(title='Nilesoft only' image=\uE249 /*https://nilesoft.org/glyphs/e249*/ tip='Enable Nilesoft Shell context menu only and hide Windows context menu completely' type='taskbar'
                                        admin cmd-line=`/c call @quote(app.exe) -s -u -t -restart & call @quote(app.exe) -s -r -t`
                                        window='hidden')
                                    //NILESOFT ONLY

                                    separator()

                                    //WINDOWS ONLY
                                        item(title='Windows only' image=\uE1B6 /*https://nilesoft.org/glyphs/e1b6*/ tip='Enable Windows context menu only and hide Nilesoft Shell context menu completely' type='taskbar'
                                        commands {
                                            cmd = {	cfg_read = io.file.read(app.cfg)
                                            modified = regex.replace(cfg_read, '\s*(?:settings\.priority|priority)\s*=\s*(?:true|false|[01])', "\n")
                                            if(cfg_read!=modified, msg('Remove settings.priority from shell.nss', 'Nilesoft Shell', msg.warning) & io.delete(app.cfg) & io.file.create(app.cfg, modified)) } wait=1,
                                            admin cmd-line=`/c reg.exe delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f & call @quote(app.exe) -s -u -t -restart @if(key.shift(), '& call @quote(app.exe)')`
                                            window='hidden'
                                        })
                                    //WINDOWS ONLY

                                    separator()

                                    //HYBRID
                                        item(title='Hybrid' image=\uE201 /*https://nilesoft.org/glyphs/e201*/ tip='Combine Windows and Nilesoft Shell context menu via "Show more options" or Shift+Right-Click functions' type='taskbar'
                                        commands {
                                            cmd = {	cfg_read = io.file.read(app.cfg)
                                            modified = regex.replace(cfg_read, '\s*(?:settings\.priority|priority)\s*=\s*(?:true|false|[01])', "\n")
                                            if(cfg_read!=modified, msg('Remove settings.priority from shell.nss', 'Nilesoft Shell', msg.warning) & io.delete(app.cfg) & io.file.create(app.cfg, modified)) } wait=1,
                                            // admin cmd-ps=`& '@quote(app.exe)' '-s' '-u' '-t' '-restart'; Sleep 2; & '@quote(app.exe)' '-s' '-r';`
                                            admin cmd-line=`/c reg.exe delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f & call @quote(app.exe) -s -u -t -restart & timeout /t 2 /nobreak & call @quote(app.exe) -s -r`
                                            window='hidden'
                                        })
                                    //HYBRID

                                } //menu(title='Mode')
                            //MODE

                            separator()

                            //CONFIG FILES
                                menu(title='Config files' image=\uE1BE /*https://nilesoft.org/glyphs/e1be*/ type='taskbar')
                                {

                                    //OPEN CONFIG DIRECTORY IN EXPLORER
                                        item(title="Open config directory in Explorer" image=\uE0E8 /*https://nilesoft.org/glyphs/e0e8*/ type='taskbar'
                                        cmd='@app.dir')
                                    //OPEN CONFIG DIRECTORY IN EXPLORER

                                    separator()

                                    //OPEN CONFIG DIRECTORY IN DEFAULT CODE EDITOR
                                        item(title="Open config directory in default code editor" image=\uE0CA /*https://nilesoft.org/glyphs/e0ca*/ type='taskbar'
                                        admin cmd='%PROGRAMFILES%/VSCodium/VSCodium.exe'
                                        arguments="@app.dir")
                                    //OPEN CONFIG DIRECTORY IN DEFAULT CODE EDITOR

                                } //menu(title='Config files')
                            //CONFIG FILES

                            separator()

                            //RELATED LINKS
                                menu(title='Related links' image=\uE11F /*https://nilesoft.org/glyphs/e11f*/)
                                {

                                    //DOCS
                                        item(title="Docs" tip='Open the Nilesoft Shell docs' image=\uE1C2 /*https://nilesoft.org/glyphs/e1c2*/ type='taskbar'
                                        cmd='https://nilesoft.org/docs'
                                        window='hidden')
                                    //DOCS

                                    separator()

                                    //SNIPPETS
                                        item(title="Snippets" tip='Open the snippet gallery by RubicBG'
                                        image=\uE26D /*https://nilesoft.org/glyphs/e26d*/ type='taskbar'
                                        cmd='https://github.com/RubicBG/Nilesoft-Shell-Snippets')
                                    //SNIPPETS

                                    separator()

                                    //GITHUB
                                        item(title="GitHub" tip='Open the Nilesoft Shell GitHub page'
                                        image=\uE22C /*https://nilesoft.org/glyphs/e22c*/ type='taskbar'
                                        cmd='https://github.com/moudey/Shell')
                                    //GITHUB

                                    separator()

                                    //DISCORD
                                        //LOGIC
                                            //SVG
                                                $svg_discord='<svg width="100" height="100" viewBox="0 0 1024 1024"><circle cx="512" cy="512" r="512" style="fill:#fff"/><path d="M689.43 349a422.21 422.21 0 0 0-104.22-32.32 1.58 1.58 0 0 0-1.68.79 294.11 294.11 0 0 0-13 26.66 389.78 389.78 0 0 0-117.05 0 269.75 269.75 0 0 0-13.18-26.66 1.64 1.64 0 0 0-1.68-.79A421 421 0 0 0 334.44 349a1.49 1.49 0 0 0-.69.59c-66.37 99.17-84.55 195.9-75.63 291.41a1.76 1.76 0 0 0 .67 1.2 424.58 424.58 0 0 0 127.85 64.63 1.66 1.66 0 0 0 1.8-.59 303.45 303.45 0 0 0 26.15-42.54 1.62 1.62 0 0 0-.89-2.25 279.6 279.6 0 0 1-39.94-19 1.64 1.64 0 0 1-.16-2.72c2.68-2 5.37-4.1 7.93-6.22a1.58 1.58 0 0 1 1.65-.22c83.79 38.26 174.51 38.26 257.31 0a1.58 1.58 0 0 1 1.68.2c2.56 2.11 5.25 4.23 8 6.24a1.64 1.64 0 0 1-.14 2.72 262.37 262.37 0 0 1-40 19 1.63 1.63 0 0 0-.87 2.28 340.72 340.72 0 0 0 26.13 42.52 1.62 1.62 0 0 0 1.8.61 423.17 423.17 0 0 0 128-64.63 1.64 1.64 0 0 0 .67-1.18c10.68-110.44-17.88-206.38-75.7-291.42a1.3 1.3 0 0 0-.63-.63zM427.09 582.85c-25.23 0-46-23.16-46-51.6s20.38-51.6 46-51.6c25.83 0 46.42 23.36 46 51.6.02 28.44-20.37 51.6-46 51.6zm170.13 0c-25.23 0-46-23.16-46-51.6s20.38-51.6 46-51.6c25.83 0 46.42 23.36 46 51.6.01 28.44-20.17 51.6-46 51.6z"/></svg>'
                                            //SVG
                                        //LOGIC

                                        //DISCORD
                                            item(title="Discord" image=image.svg(svg_discord) tip='Join the Nilesoft Shell Discord server, the best place to get help and support.' type='taskbar'
                                            cmd='https://discord.com/channels/1106387012707168318/1106387015425069151')
                                        //DISCORD

                                    separator()

                                    //REDDIT
                                        item(title="Reddit" tip='Open the Nilesoft Shell sub-Reddit'
                                        image=\uE23E /*https://nilesoft.org/glyphs/e23e*/ type='taskbar'
                                        cmd='https://www.reddit.com/r/nilesoft/')
                                        //REDDIT

                                } //menu(title='Related links')
                            //RELATED LINKS

                        } //menu(title='Nilesoft')
                    //NILESOFT

                    //POWER
                        menu(title='Power' /*https://nilesoft.org/glyphs/e14d*/ image=\uE14D tip='Power options' type='taskbar')
                        {

                            //LOGIC
                                $hibernate_enabled = reg('HKLM\SYSTEM\CurrentControlSet\Control\Power', 'HibernateEnabledDefault') and reg('HKLM\SYSTEM\CurrentControlSet\Control\Power', 'HibernateEnabled')
                            //LOGIC

                            //LOCK
                                item(title='Lock' keys='WIN+L' image=\uE100 /*soft.org/glyphs/e100*/ tip='Secures your Windows session immediately. You will need your password, PIN, or biometric authentication to regain access.' type='taskbar'
                                cmd='rundll32.exe' arguments='user32.dll,LockWorkStation'
                                window='hidden')
                            //LOCK

                            //LOGOFF
                                item(title='Logoff' image=\uE102 /*https://nilesoft.org/glyphs/e102*/ tip='Closes all programs and signs the current user out.' type='taskbar'
                                cmd='shutdown.exe' arguments='/l'
                                window='hidden')
                            //LOGOFF

                            //SWITCH USER
                                item(title='Switch User' image=\uE101 /*https://nilesoft.org/glyphs/e101*/ tip='Switch to another user account while keeping your programs running in the background.' type='taskbar'
                                cmd='tsdiscon.exe'
                                window='hidden')
                            //SWITCH USER

                            separator()

                            //SLEEP
                                item(title='Sleep' image=\uE11C /*https://nilesoft.org/glyphs/e11c*/ tip='Saves your work in memory and puts your computer in a low-power state for quick wake-up, whilst maintaining network connectivity.' type='taskbar'
                                cmd='rundll32.exe' arguments='powrprof.dll,SetSuspendState Sleep')
                            //SLEEP

                            //HIBERNATE
                                item(title='Hibernate' image=\uE017 /*https://nilesoft.org/glyphs/e017*/ tip='Saves your work to disk and turns off your computer completely. Restores everything exactly as you left it, on next startup.' type='taskbar' visibility=if(not(hibernate_enabled),'disabled')
                                cmd='shutdown.exe' arguments='/h'
                                window='hidden')
                            //HIBERNATE

                            //QUERY POWER STATES
                                item(title='Query power states' image=\uE132 /*https://nilesoft.org/glyphs/e132*/ tip='Displays available power states of the computer.' type='taskbar'
                                cmd-line='/k powercfg /a & pause & exit')
                            //QUERY POWER STATES

                            separator()

                            //RESTART
                                item(title='Restart' image=\uE025 /*https://nilesoft.org/glyphs/e025*/ tip='Closes all programs and restarts Windows. Hold SHIFT to force close unresponsive applications.' keys='SHIFT = Forced' type='taskbar'
                                cmd='shutdown.exe' arguments='/r @if(key.shift(),'/f','') /t 0'
                                window='hidden')
                            //RESTART

                            //SHUT DOWN
                                item(title='Shut down' image=\uE12F /*https://nilesoft.org/glyphs/e12f*/ tip='Closes all programs and turns off your computer. Hold SHIFT to force close unresponsive applications.' keys='SHIFT = Forced' type='taskbar'
                                cmd='shutdown.exe' arguments='/s @if(key.shift(),'/f','') /t 0'
                                window='hidden')
                            //SHUT DOWN

                            separator()

                            //ADVANCED
                                menu(title='Advanced' image=\uE167 /*https://nilesoft.org/glyphs/e167*/)
                                {	

                                    //BOOT TO BIOS/UEFI
                                        item(title='Boot to BIOS/UEFI' image=\uE1A9 /*https://nilesoft.org/glyphs/e1a9*/ tip='Booting to your BIOS or UEFI firmware settings.' keys='SHIFT = Forced' type='taskbar'
                                        admin cmd='shutdown.exe' arguments='/r /fw @if(key.shift(),'/f','') /t 0'
                                        window='hidden')
                                    //BOOT TO BIOS/UEFI

                                    separator()

                                    //RECOVERY MODE
                                        item(title='Recovery Mode' image=\uE1A9 /*https://nilesoft.org/glyphs/e1a9*/ tip='Restarts to Windows Recovery Environment for troubleshooting, repair options, and advanced startup settings.' keys='SHIFT = Forced' type='taskbar'
                                        cmd='shutdown.exe' arguments='/r /o @if(key.shift(),'/f','') /t 0'
                                        window='hidden')
                                    //RECOVERY MODE

                                    separator()

                                    //SAFE MODE
                                        menu(title='Safe Mode' image=\uE0F6 /*https://nilesoft.org/glyphs/e0f6*/ tip='Set the safe boot mode and then restart the computer.' type='taskbar' expanded='true')
                                        {

                                            //NORMAL MODE
                                                item(title='Normal Mode' image=\uE1A9 /*https://nilesoft.org/glyphs/e1a9*/ tip='Sets the default boot mode of the computer to Normal Mode, which starts Windows normally.' keys='SHIFT = Forced' type='taskbar'
                                                commands
                                                {
                                                    cmd=io.delete('@user.desktop\MSConfig.lnk'),
                                                    admin cmd-line='/c bcdedit /deletevalue {current} safeboot & shutdown /r @if(key.shift(),'/f','') /t 0'
                                                    window='hidden'
                                                })
                                            //NORMAL MODE

                                            separator()

                                            //SAFE MODE
                                                item(title='Safe Mode' image=\uE1A9 /*https://nilesoft.org/glyphs/e1a9*/ tip='Sets the default boot mode of the computer to Safe Mode, which starts Windows with minimal drivers and services.' keys='SHIFT = Forced' type='taskbar'
                                                commands
                                                {
                                                    cmd=path.lnk.create('@user.desktop\MSConfig.lnk', 'MSConfig.exe'),
                                                    admin cmd-line='/c bcdedit /set {current} safeboot minimal & shutdown /r @if(key.shift(),'/f','') /t 0'
                                                    window='hidden'
                                                })
                                            //SAFE MODE

                                            //SAFE MODE WITH NETWORKING
                                                item(title='Safe Mode with networking' image=\uE1A9 /*https://nilesoft.org/glyphs/e1a9*/ tip='Sets the default boot mode of the computer to Safe Mode, which starts Windows with minimal drivers and services, but with networking enabled.' keys='SHIFT = Forced' type='taskbar'
                                                commands
                                                {
                                                    cmd=path.lnk.create('@user.desktop\MSConfig.lnk', 'MSConfig.exe'),
                                                    admin cmd-line='/c bcdedit /set {current} safeboot network & shutdown /r @if(key.shift(),'/f','') /t 0'
                                                    window='hidden'
                                                })
                                            //SAFE MODE WITH NETWORKING

                                            //SAFE MODE WITH COMMAND PROMPT
                                                item(title='Safe Mode with Command Prompt' image=\uE1A9 /*https://nilesoft.org/glyphs/e1a9*/ tip='Sets the default boot mode of the computer to Safe Mode, which starts Windows with minimal drivers and services, but with a command prompt.' keys='SHIFT = Forced' type='taskbar'
                                                commands
                                                {
                                                    cmd=path.lnk.create('@user.desktop\MSConfig.lnk', '@sys.bin\msconfig.exe'),
                                                    admin cmd-line='/c bcdedit /set {current} safebootalternateshell yes & shutdown /r @if(key.shift(),'/f','') /t 0'
                                                    window='hidden'
                                                })
                                            //SAFE MODE WITH COMMAND PROMPT

                                        } //menu(title='Safe Mode')
                                    //SAFE MODE
                                    
                                } //menu(title='Advanced')
                            //ADVANCED

                        } //menu(title='Power')
                    //POWER

                } //menu(title='More options')
            //MORE OPTIONS

        } //menu(title='Bottom')
    //BOTTOM

//BODY