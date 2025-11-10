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
                menu(title='Windows Internal Context Menu Entries' image=\uE25F /*https://nilesoft.org/glyphs/e25f*/ tip='A placeholder for the Windows internal context menu entries' type='taskbar' expanded='true' separator='none' position='middle')
                {

                    //LOGIC
                        $ver_short = reg.get('HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion', 'DisplayVersion')
                    //LOGIC

                    //WINDOWS VERSION
                        item(title=' @"\t"@sys.ver.name @ver_short' image=\uE1B6 /*https://nilesoft.org/glyphs/e1b6*/ separator='none' position=0)
                    //WINDOWS VERSION

                    //START MENU SETTINGS
                        item(title='Start Menu settings' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ type='taskbar' separator='before' position=2
                        cmd='ms-settings:personalization-start')
                    //START MENU SETTINGS

                    //TASKBAR SETTINGS
                        item(title='Taskbar settings' image=\uE206 /*https://nilesoft.org/glyphs/e206*/ type='taskbar' separator='none' position=3
                        cmd='ms-settings:taskbar')
                    //TASKBAR SETTINGS

                    //OPEN PERSONALISATION SETTINGS PAGE
                        item(title='Personalisation settings' image=\uE116 /*https://nilesoft.org/glyphs/e116*/ type='taskbar' separator='none' position=4
                        cmd='ms-settings:personalization')
                    //OPEN PERSONALISATION SETTINGS PAGE

                    //MULTITASKING SETTINGS
                        item(title='Multitasking settings' image=\uE204 /*https://nilesoft.org/glyphs/e204*/ type='taskbar' separator='none' position=5
                        cmd='ms-settings:multitasking')
                    //MULTITASKING SETTINGS

                    //OPEN DISPLAY SETTINGS PAGE
                        item(title='Display settings' image=\uE0BE /*https://nilesoft.org/glyphs/e0be*/ type='taskbar' separator='none' position=6
                        cmd='ms-settings:display')
                    //OPEN DISPLAY SETTINGS PAGE

                } //menu(title='Windows Internal Context Menu Entries')
            //WINDOWS INTERNAL FUNCTIONS

        } //menu(title='middle')
    //MIDDLE

    //

    //BOTTOM
        menu(title='Bottom' image=\uE1E5 tip='A placeholder for context menu entries in the bottom area' type='taskbar' expanded='true' position='bottom')
        {

            //NILESOFT SHELL VERSION
                item(title='Nilesoft Shell@"\t"v@app.ver' image=\uE249 /*https://nilesoft.org/glyphs/e249*/ tip='Gives the version number of the currently installed Nilesoft Shell. Hold the SHIFT key to enable the option to completely reload Nilesoft Shell.' visibility=!key.shift() separator='before' position=8)
            //NILESOFT SHELL VERSION

            //NILESOFT SHELL VERSION
                item(title='Nilesoft Shell@"\t"Reload' image=\uE249 /*https://nilesoft.org/glyphs/e249*/ tip='Completely reloads Nilesoft Shell. This will unregister and re-register the shell.dll, restarting explorer multiple times in the process.' visibility=key.shift() separator='before' position=10
                cmd-line='/c call @quote(app.exe) -s -u -t -restart & del /f /q @quote('@app.dir\shell.log') & timeout /t 3 /nobreak & call @quote(app.exe) -s -r -t -restart'
                window='hidden')
            //NILESOFT SHELL VERSION

        } //menu(title='Bottom')
    //BOTTOM

//BODY