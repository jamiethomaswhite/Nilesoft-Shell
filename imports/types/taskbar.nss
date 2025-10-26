//HEADER

    // Thanks to moudey for creating Shell
    // https://github.com/moudey/Shell
    //
    // and RubicBG for all the useful snippets and support
    // https://github.com/RubicBG/Nilesoft-Shell-Snippets/

    //

    //FULL ID LIST



    //FULL ID LIST

//HEADER

//

//MODIFIERS

    //HIDE LIST

    modify(type='taskbar' where=str.equals(this.name, ["cascade windows", "show windows stacked", "show windows side by side", "show the desktop", "task manager", "properties", "taskbar settings"]) visibility='hidden')

    //HIDE LIST

    //

    //ENTRIES

        //WINDOWS INTERNAL FUNCTIONS
            menu(title='Windows Internal Context Menu Entries' image=\uE25F /*https://nilesoft.org/glyphs/e25f*/ tip='A placeholder for the Windows internal context menu entries' type='taskbar' expanded='true')
            {

                //TASKBAR SETTINGS
                item(title='Taskbar settings' image=\uE206 /*https://nilesoft.org/glyphs/e206*/ cmd='ms-settings:taskbar')

                //MULTITASKING SETTINGS
                item(title='Multitasking settings' image=\uE204 /*https://nilesoft.org/glyphs/e204*/ cmd='ms-settings:multitasking')

            } //menu(title='Windows Internal Context Menu Entries')
        //WINDOWS INTERNAL FUNCTIONS

    //ENTRIES

//MODIFIERS

//

//PLUGINS

    menu(title='Plugins' image=\uE1E5 tip='A placeholder for the Nilesoft Shell context menu entries' type='file' expanded='true')
    {

		//WINDOWS
			menu(title='Windows' image=\uE1B6 /*https://nilesoft.org/glyphs/e1b6*/ separator='both')
			{

				//OS INFORMATION
					menu(title='OS Information' expanded='true')
					{

						//LOGIC
						$ver_short = reg.get('HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion', 'DisplayVersion')
						//LOGIC

						//WINDOWS VERSION
						item(title=sys.ver.name image=\uE134 tip='Click to open System Information dialog'
						cmd='msinfo32.exe')

						//WINDOWS BUILD
						item(title='OS: @sys.ver [@ver_short]' image=\uE134 tip='Click to open About dialog'
						cmd='winver.exe')

					} //menu(title='OS Information')
				//OS INFORMATION

				separator()

                //SETTINGS QUICK ACCESS
                    menu(title='Settings quick access' image=\uE0F3 /*https://nilesoft.org/glyphs/e0f3*/)
                    {

                        //BLUETOOTH AND DEVICES
                            menu(title='Bluetooth and Devices' image=\uE0EC)
                            {

                                //OPEN BLUETOOTH AND DEVICES SETTINGS PAGE
                                item(title='Open Bluetooth and Devices settings page' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:devices')

                                separator()

                                //NEARBY SHARING
                                item(title='Nearby sharing' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:crossdevice')

                                //BLUETOOTH
                                item(title='Bluetooth' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:bluetooth')

                                //DEVICES
                                item(title='Devices' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:connecteddevices')

                                //PRINTERS AND SCANNERS
                                item(title='Printers and scanners' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:printers')

                                //MOBILE DEVICES
                                item(title='Mobile devices' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:mobile-devices')

                                //MOUSE
                                item(title='Mouse' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:mousetouchpad')

                                //TOUCHPAD
                                item(title='Touchpad' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:devices-touchpad')

                                //PEN AND WINDOWS INK
                                item(title='Pen and Windows Ink settings' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:pen')

                                //CAMERAS
                                item(title='Cameras' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:camera')

                            } //menu(title='Bluetooth and Devices')
                        //BLUETOOTH AND DEVICES

                        separator()

                        //NETWORK AND INTERNET
                            menu(title='Network and internet' image=\uE0EC)
                            {

                                //OPEN NETWORK AND INTERNET SETTINGS PAGE
                                item(title='Open Network and Internet settings page' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:network') // ms-settings:network-status

                                separator()

                                //WI-FI
                                item(title='Wi-Fi' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:network-wifi')

                                //ETHERNET
                                item(title='Ethernet' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:network-ethernet')

                                //MOBILE HOTSPOT
                                item(title='Mobile hotspot' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:network-mobilehotspot')

                                //AIRPLANE MODE
                                item(title='Airplane mode' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:network-airplanemode')

                                //VPN
                                item(title='VPN' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:network-vpn')

                                //PROXY
                                item(title='Proxy' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:network-proxy')

                                separator()

                                //ADVANCED NETWORK SETTINGS
                                item(title='Advanced network settings' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:network-advancedsettings')

                            } //menu(title='Network and internet')
                        //NETWORK AND INTERNET

                        separator()

                        //SOUND
                            menu(title='Sound' image=\uE0EC)
                            {

                                //OPEN SOUND SETTINGS PAGE
                                item(title='Open Sound settings page' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:sound')

                                separator()

                                //SOUND DEVICES
                                item(title='Sound devices' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:sound-devices')

                                //VOLUME MIXER
                                item(title='Volume mixer' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:apps-volume')

                                separator()

                                //NOTIFICATIONS
                                item(title='Notifications' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:notifications')

                                //FOCUS
                                item(title='Focus' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:quiethours')

                            } //menu(title='Sound')
                        //SOUND

                        separator()

                        //POWER
                        item(title='Power settings' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:powersleep') // cmd='ms-settings:batterysaver'

                        separator()

                        //TIME AND LANGUAGE
                            menu(title='Time and Language' image=\uE0EC)
                            {

                                //DATE AND TIME
                                item(title='Date and Time' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:dateandtime')

                                //LANGUAGE AND REGION
                                item(title='Language and Region' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:regionlanguage')

                                //TYPING
                                item(title='Typing' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:typing')

                                //SPEECH
                                item(title='Speech' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:speech')

                            } //menu(title='Time and Language')
                        //TIME AND LANGUAGE

                        separator()

                        //APPS
                            menu(title='Apps' image=\uE0EC)
                            {

                                //OPEN APPS SETTINGS PAGE
                                item(title='Open Apps settings page' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:apps')

                                separator()

                                //INSTALLED APPS
                                item(title='Installed apps' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:installed-apps')

                                //ADVANCED APP SETTINGS
                                item(title='Advanced app settings' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:advanced-apps')

                                //DEFAULT APPS
                                item(title='Default apps' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:defaultapps')

                                //ACTIONS
                                item(title='Actions' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:appactions')

                                //APPS FOR WEBSTIES
                                item(title='Apps for websites' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:appsforwebsites')

                                //STARTUP
                                item(title='Startup' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:startupapps')
                            }
                        //APPS

                        separator()

                        //PERSONALISATION
                            menu(title='Personalisation' image=\uE0EC)
                            {

                                //OPEN PERSONALISATION SETTINGS PAGE
                                item(title='Open Personalisation settings page' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:personalization')

                                separator()

                                //BACKGROUND
                                item(title='Background' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:personalization-background')

                                //COLOURS
                                item(title='Colours' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:personalization-colors') // ms-settings:colors

                                //THEMES
                                item(title='Themes' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:themes')

                                //FONTS
                                item(title='Fonts' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:fonts')

                                //LOCK SCREEN
                                item(title='Lock screen' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:personalization-lockscreen') // ms-settings:lockscreen

                                //START
                                item(title='Start' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:personalization-start')

                                //TASKBAR
                                item(title='Taskbar' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:taskbar')

                            } //menu(title='Personalisation')
                        //PERSONALISATION

                        separator()

                        //DISPLAY SETTINGS
                            menu(title='Display settings' image=\uE0EC)
                            {

                                //OPEN DISPLAY SETTINGS PAGE
                                item(title='Open Display settings page' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ cmd='ms-settings:display') // ms-settings:screenrotation

                                separator()

                                //NIGHT LIGHT
                                item(image=\uE016 /*https://nilesoft.org/glyphs/e016*/ title='Night light' cmd='ms-settings:nightlight')

                                //HDR
                                item(image=\uE016 /*https://nilesoft.org/glyphs/e016*/ title='HDR' cmd='ms-settings:display-hdr')
                                
                                //VIDEO PLAYBACK
                                item(image=\uE016 /*https://nilesoft.org/glyphs/e016*/ title='Video playback' cmd='ms-settings:videoplayback')

                                separator()

                                //ADVANCED DISPLAY SETTINGS
                                item(image=\uE016 /*https://nilesoft.org/glyphs/e016*/ title='Advanced display settings' cmd='ms-settings:advanceddisplay')

                                //ADVANCED GRAPHICS SETTINGS
                                item(image=\uE016 /*https://nilesoft.org/glyphs/e016*/ title='Advanced graphics settings' cmd='ms-settings:display-advancedgraphics')

                            } //menu(title='Display settings')
                        //DISPLAY SETTINGS

                        separator()

                        //WINDOWS UPDATE
                            menu(title='Windows Update' image=\uE0EC)
                            {

                                //OPEN WINDOWS UPDATE PAGE
                                item(image=\uE016 /*https://nilesoft.org/glyphs/e016*/ title='Open Windows Update page' cmd='ms-settings:windowsupdate')

                                separator()

                                //CHECK FOR UPDATES
                                item(image=\uE016 /*https://nilesoft.org/glyphs/e016*/ title='Check for updates' cmd-line='/c USOClient StartInteractiveScan & start ms-settings:windowsupdate' window='hidden')

                                //UPDATE HISTORY
                                item(image=\uE016 /*https://nilesoft.org/glyphs/e016*/ title='Update history' cmd='ms-settings:windowsupdate-history')

                                separator()

                                //ADVANCED OPTIONS
                                item(image=\uE016 /*https://nilesoft.org/glyphs/e016*/ title='Advanced options' cmd='ms-settings:windowsupdate-options')

                            } //menu(title='Windows Update')
                        //WINDOWS UPDATE

                    } //menu(title='Settings quick access')
                //SETTINGS QUICK ACCESS

				separator()

				//TOOLS
					menu(title='Tools' image=\uE0F6 /*https://nilesoft.org/glyphs/e0f6*/ expanded='true')
					{

						//TASK MANAGER
						item(title='Task Manager' image=\uE159 /*https://nilesoft.org/glyphs/e159*/ cmd='taskmgr.exe')

						//DEVICE MANAGER
						item(title='Device Manager' image=\uE0D1 /*https://nilesoft.org/glyphs/e0d1*/ cmd='devmgmt.msc')

						//REGISTRY EDITOR
						item(title='Registry Editor' image=\uE142 /*https://nilesoft.org/glyphs/e142*/ cmd='regedit.exe')

						//GROUP POLICY EDITOR
						item(title='Group Policy Edit' image=\uE202 /*https://nilesoft.org/glyphs/e202*/ cmd='gpedit.msc')

						//SERVICES
						item(title='Services' image=\uE0C5 /*https://nilesoft.org/glyphs/e0c5*/ cmd='services.msc')

						//TASK SCHEDULER
						item(title='Task Scheduler' image=\uE1F2 /*https://nilesoft.org/glyphs/e1f2*/ cmd='taskschd.msc /s')

						//EVENT VIEWER
						item(title='Event Viewer' image=\uE0D4 /*https://nilesoft.org/glyphs/e0d4*/ cmd='eventvwr.msc /s')

						//MS CONFIG
						item(title='MS Config' image=\uE0F6 /*https://nilesoft.org/glyphs/e0f6*/ cmd='msconfig.exe')

						//SHARED FOLDERS
						item(title='Shared Folders' image=\uE0E3 /*https://nilesoft.org/glyphs/e0e3*/ cmd='fsmgmt.msc')

						//DISK MANAGEMENT
						item(title='Disk Management' image=\uE15E /*https://nilesoft.org/glyphs/e15e*/ cmd='diskmgmt.msc')

						//WINDOWS TERMINAL
						item(title='Windows Terminal' image=\uE0AC /*https://nilesoft.org/glyphs/e0ac*/ cmd='wt.exe')

						//WINDOWS DEFENDER
						item(title='Windows Defender' image=\uE1B5 /*https://nilesoft.org/glyphs/e1b5*/ cmd='explorer.exe windowsdefender:')

						//WINDOWS FIREWALL
						item(title='Windows Firewall' image=\uE1CF /*https://nilesoft.org/glyphs/e1cf*/ cmd='WF.msc')

						//WINDOWS SETTINGS
						item(title='Windows Settings' image=\uE0F3 /*https://nilesoft.org/glyphs/e0f3*/ cmd='ms-settings:')

					} //menu(title='Tools')
				//TOOLS

			} //menu(title='Windows')
		//WINDOWS

        //NILESOFT
            menu(title='Nilesoft' image=\uE249 where=@(this.count == 0) separator='both')
            {

                //APP VERSION NUMBER
                item(title="Version\t"+@app.ver image=\uE24A cmd='https://nilesoft.org/download')

                separator()

                //OPEN NILESOFT SHELL MANAGER APP
                item(title="Open Nilesoft Shell manager app" image=\uE0A4 admin cmd='@app.exe')

                separator()

                //RESTART EXPLORER
                item(title="Restart Explorer" cmd=command.restart_explorer image=icon.refresh)

                separator()

                //DLL
                    menu(title='DLL' where=sel.file.ext=='.dll' image=\uE0F1)
                    {

                        //LOGIC
                            $isNS = io.meta(sel, 'System.Company') == 'Nilesoft'
                        //LOGIC

                        //SHELL.DLL
                            menu(title='shell.dll' expanded='true' where=isNS)
                            {

                                //REGISTER
                                item(title='Register' keys=io.meta(sel, 'System.FileVersion') vis=if(sel.path==app.dll,'disable') cmd={
                                    $go = true
                                    // backup shell.dll
                                    if(go and !io.rename(app.dll, '@app.dir/shell-@(sys.datetime("Ymd-HMS")).dll'), if(msg('Backup failed! Would you like to continue?', 'NileSoft Shell', msg.warning|msg.yesno|msg.defbutton2)==msg.idno, {go=false} ))
                                    // replace shell.dll
                                    if(go and !io.copy(sel.path, app.dll), msg('Copy of shell.dll was failed! Aborting!', 'NileSoft Shell', msg.error) & {go=false} )
                                    // check executable
                                    if(go and not(sel.parent().trim('\')==app.dir) and path.exists('@sel.parent/shell.exe') and msg('A copy of shell.exe was found in @sel.parent. Would you like to replace the main application with this version?' , 'NileSoft Shell', msg.warning|msg.yesno|msg.defbutton2)!=msg.idno, if(!io.copy('@sel.parent/shell.exe', app.exe), msg('Copy of shell.exe was failed!, msg.warning')))
                                    // reset shell.log
                                    if(go and path.exists('@app.dir/shell.log') and msg('Do you want to reset the log file?' , 'NileSoft Shell', msg.warning|msg.yesno|msg.defbutton2)!=msg.idno, io.delete('@sel.parent/shell.log'))
                                    // restart
                                    //cmd=app.exe args='-restart'
                                    if(go, command.restart_explorer) })

                                //UNREGISTER
                                item(title='Unregister' keys=io.meta(app.dll, 'System.FileVersion') vis=if(sel.path!=app.dll,'disable')
                                cmd=app.exe args='-unregister')

                            } //menu(title='shell.dll')
                        //SHELL.DLL

                    } //menu(title='DLL'
                //DLL

                separator()

                //MODE
                    menu(title='Mode' image=\uE12E vis=if(!sys.is11, 'disable'))
                    {

                        //NILESOFT ONLY
                        item(title='Nilesoft only' image=\uE249 tip='Enable Nilesoft Shell context menu only and hide Windows context menu completely'
                            // admin cmd-ps=`& '@quote(app.exe)' '-s' '-u' '-t' '-restart'; & '@quote(app.exe)' '-s' '-r' '-t';`
                            window='hidden' admin cmd-line=`/c call @quote(app.exe) -s -u -t -restart & call @quote(app.exe) -s -r -t`)

                        separator()

                        //WINDOWS ONLY
                        item(title='Windows only' image=\uE1B6 tip='Enable Nilesoft Shell context menu only and hide Windows context menu completely' commands {
                            cmd = {	cfg_read = io.file.read(app.cfg)
                                    modified = regex.replace(cfg_read, '\s*(?:settings\.priority|priority)\s*=\s*(?:true|false|[01])', "\n")
                                    if(cfg_read!=modified, msg('Remove settings.priority from shell.nss', 'Nilesoft Shell', msg.warning) & io.delete(app.cfg) & io.file.create(app.cfg, modified)) } wait=1, 
                            // admin cmd-ps=`& '@quote(app.exe)' '-s' '-u' '-t' '-restart'; Sleep 2; & '@quote(app.exe)' '-s' '-r';`})
                            window='hidden' admin cmd-line=`/c reg.exe delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f & call @quote(app.exe) -s -u -t -restart @if(key.shift(), '& call @quote(app.exe)')` })
                            
                        separator()

                        //HYBRID
                        item(title='Hybrid' image=\uE201 tip='Combine Windows and Nilesoft Shell context menu via "Show more options" or Shift+Right-Click functions' commands {
                            cmd = {	cfg_read = io.file.read(app.cfg)
                                    modified = regex.replace(cfg_read, '\s*(?:settings\.priority|priority)\s*=\s*(?:true|false|[01])', "\n")
                                    if(cfg_read!=modified, msg('Remove settings.priority from shell.nss', 'Nilesoft Shell', msg.warning) & io.delete(app.cfg) & io.file.create(app.cfg, modified)) } wait=1,
                            // admin cmd-ps=`& '@quote(app.exe)' '-s' '-u' '-t' '-restart'; Sleep 2; & '@quote(app.exe)' '-s' '-r';`})
                            window='hidden' admin cmd-line=`/c reg.exe delete "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" /f & call @quote(app.exe) -s -u -t -restart & timeout /t 2 /nobreak & call @quote(app.exe) -s -r` })

                    } //menu(title='Mode')
                //MODE

                separator()

                //CONFIG FILES
                    menu(title='Config files' image=\uE1BE)
                    {

                        //OPEN CONFIG DIRECTORY IN EXPLORER
                        item(title="Open config directory in Explorer" image=\uE0E8 cmd='@app.dir')

                        separator()

                        //OPEN CONFIG DIRECTORY IN DEFAULT CODE EDITOR
                        item(title="Open config directory in default code editor" image=\uE0CA /*https://nilesoft.org/glyphs/e0ca*/ cmd='@app.dir')

                    } //menu(title='Config files')
                //CONFIG FILES

                separator()

                //RELATED LINKS
                    menu(title='Related links' image=\uE11F)
                    {

                        //DOCS
                        item(title="Docs" tip='Open the Nilesoft Shell docs' image=image.glyph(\uE1C4)
                            cmd-ps=`try {
                                if ((Invoke-WebRequest -Uri "https://nilesoft.org/docs" -UseBasicParsing -ErrorAction Stop).StatusCode -eq 200) {
                                    Start-Process "https://nilesoft.org/docs"
                                } else {
                                    throw
                                } } catch { Start-Process 'https://web.archive.org/web/@"*"/https://nilesoft.org' }`
                            window='hidden')

                        separator()

                        //SNIPPETS
                        item(title="Snippets" tip='Open the snippet gallery by RubicBG'
                            image=image.glyph(\uE26D)
                            cmd='https://github.com/RubicBG/Nilesoft-Shell-Snippets')

                        separator()

                        //GITHUB
                        item(title="GitHub" tip='Open the Nilesoft Shell GitHub page'
                            image=image.glyph(\uE22C)
                            cmd='https://github.com/moudey/Shell')
                            
                        separator()

                        //REDDIT
                        item(title="Reddit" tip='Open the Nilesoft Shell sub-Reddit'
                            image=image.glyph(\uE23D)
                            cmd='https://www.reddit.com/r/nilesoft/')

                    } //menu(title='Related links')
                //RELATED LINKS

            } //menu(title='Nilesoft')
		//NILESOFT

		//POWER
			menu(title='Power' image=\uE14D tip='Power options')
			{

				//RESTART
				item(title='Restart' image=\uE025 tip='Closes all programs and restarts Windows. Hold SHIFT to force close unresponsive applications.' keys='SHIFT = Forced'
					cmd='shutdown.exe' args='/r @if(key.shift(),'/f','') /t 0' window='hidden')

				//SHUT DOWN
				item(title='Shut down' image=\uE12F tip='Closes all programs and turns off your computer. Hold SHIFT to force close unresponsive applications.' keys='SHIFT = Forced'
					cmd='shutdown.exe' args='/s @if(key.shift(),'/f','') /t 0' window='hidden')

				separator()

				//SLEEP
				item(title='Sleep' image=\uE11C tip='Saves your work in memory and puts your computer in a low-power state for quick wake-up, maintaining network connectivity.'
					cmd='rundll32.exe' args='powrprof.dll,SetSuspendState Sleep')

				//LOGIC
					$hibernate_enabled = reg('HKLM\SYSTEM\CurrentControlSet\Control\Power', 'HibernateEnabledDefault') and reg('HKLM\SYSTEM\CurrentControlSet\Control\Power', 'HibernateEnabled')
				//LOGIC

				//HIBERNATE
				item(title='Hibernate' image=\uE017 tip='Saves your work to disk and turns off your computer completely. Restores everything exactly as you left it, on next startup.'
					vis=if(not(hibernate_enabled),'disabled')
					cmd='shutdown.exe' args='/h' window='hidden')

				//CHECK POWER STATES
				item(title='Check power states' image=\uE132 /*https://nilesoft.org/glyphs/e132*/ tip='Displays available power states of the computer.'
					cmd-line='/k powercfg /a & pause & exit')

				separator()

				//ADVANCED
					menu(title='Advanced' image=\uE167 /*https://nilesoft.org/glyphs/e167*/)
					{	

						//BOOT TO BIOS/UEFI
						item(title='Boot to BIOS/UEFI' image=\uE1A9 /*https://nilesoft.org/glyphs/e1a9*/ tip='Booting to your BIOS or UEFI firmware settings.' keys='SHIFT = Forced'
							admin cmd='shutdown.exe' args='/r /fw @if(key.shift(),'/f','') /t 0' window='hidden')

						separator()

						//RECOVERY MODE
						item(title='Recovery Mode' image=\uE1A9 /*https://nilesoft.org/glyphs/e1a9*/ tip='Restarts to Windows Recovery Environment for troubleshooting, repair options, and advanced startup settings.' keys='SHIFT = Forced'
							cmd='shutdown.exe' args='/r /o @if(key.shift(),'/f','') /t 0' window='hidden')

						separator()

						//SAFE MODE
							menu(title='Safe Mode' image=\uE0F6 tip='Set the safe boot mode and then restart the computer.' expanded='true')
							{

								//NORMAL MODE
								item(title='Normal Mode' image=\uE1A9 /*https://nilesoft.org/glyphs/e1a9*/ tip='Sets the default boot mode of the computer to Normal Mode, which starts Windows normally.' keys='SHIFT = Forced'
									commands {
										cmd=io.delete('@user.desktop\MSConfig.lnk'),
										admin cmd-line='/c bcdedit /deletevalue {current} safeboot & shutdown /r @if(key.shift(),'/f','') /t 0' window='hidden', })

								separator()

								//SAFE MODE
								item(title='Safe Mode' image=\uE1A9 /*https://nilesoft.org/glyphs/e1a9*/ tip='Sets the default boot mode of the computer to Safe Mode, which starts Windows with minimal drivers and services.' keys='SHIFT = Forced'
									commands {
										cmd=path.lnk.create('@user.desktop\MSConfig.lnk', 'MSConfig.exe'),
										admin cmd-line='/c bcdedit /set {current} safeboot minimal & shutdown /r @if(key.shift(),'/f','') /t 0' window='hidden', })

								//SAFE MODE WITH NETWORKING
								item(title='Safe Mode with networking' image=\uE1A9 /*https://nilesoft.org/glyphs/e1a9*/ tip='Sets the default boot mode of the computer to Safe Mode, which starts Windows with minimal drivers and services, but with networking enabled.' keys='SHIFT = Forced'
									commands {
										cmd=path.lnk.create('@user.desktop\MSConfig.lnk', 'MSConfig.exe'),
										admin cmd-line='/c bcdedit /set {current} safeboot network & shutdown /r @if(key.shift(),'/f','') /t 0' window='hidden', })

								//SAFE MODE WITH COMMAND PROMPT
								item(title='Safe Mode with Command Prompt' image=\uE1A9 /*https://nilesoft.org/glyphs/e1a9*/ tip='Sets the default boot mode of the computer to Safe Mode, which starts Windows with minimal drivers and services, but with a command prompt.' keys='SHIFT = Forced'
									commands {
										cmd=path.lnk.create('@user.desktop\MSConfig.lnk', '@sys.bin\msconfig.exe'),
										admin cmd-line='/c bcdedit /set {current} safebootalternateshell yes & shutdown /r @if(key.shift(),'/f','') /t 0' window='hidden', })

							} //menu(title='Safe Mode')
						//SAFE MODE
						
					} //menu(title='Advanced')
				//ADVANCED

			} //menu(title='Power')
		//POWER

	} //menu(title='plugins')

//PLUGINS
