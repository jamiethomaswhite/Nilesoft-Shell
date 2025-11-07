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



        } //menu(title='Bottom')
    //BOTTOM

//BODY