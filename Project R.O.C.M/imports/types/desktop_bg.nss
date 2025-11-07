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
        menu(title='Top' tip='A placeholder for context menu entries in the top area' where=window.is_desktop expanded='true' position='top')
        {



        } //menu(title='top')
    //TOP

    //

    //MIDDLE
        menu(title='Middle' tip='A placeholder for context menu entries in the middle area' where=window.is_desktop expanded='true' position='middle')
        {


            //WINDOWS INTERNAL FUNCTIONS
                menu(title='Windows Internal Context Menu Entries' image=\uE25F /*https://nilesoft.org/glyphs/e25f*/ tip='A placeholder for the Windows internal context menu entries' where=window.is_desktop expanded='true' position='middle')
                {

                    //PASTE
                        modify(title='Paste' image=\uE0b1 /*https://nilesoft.org/glyphs/e0b1*/ tip='Paste the currently held item/s from the clipbaord to the selected position' keys='Ctrl+V' where=window.is_desktop find='paste' separator='after' position=0)
                    //PASTE

                    //POWERTOYS
                        //NEW+ MENU
                            modify(title='New' image=\uE283 /*https://nilesoft.org/glyphs/e283*/ tip='A menu for creating new empty items from user createable templates' where=window.is_desktop find='new+' separator='both' position=1)
                        //NEW+ MENU

                        //"NEW FOLDER" ENTRY IN "NEW+" MENU
                            modify(title='New folder' image=\uE0E5 /*https://nilesoft.org/glyphs/e0e5*/ tip='Create a new empty folder at the currently selected location' keys='Ctrl+Shift+N' where=window.is_desktop find='new folder' in=str.replace("new+", '&', '') separator='both')
                        //"NEW FOLDER" ENTRY IN "NEW+" MENU

                        //"OPEN TEMPLATES FOLDER" ENTRY IN "NEW+" MENU
                            modify(title='Open templates folder' image=\uE0E8 /*https://nilesoft.org/glyphs/e0e8*/ tip='Open the templates folder in File Explorer' + "\n\n" + 'Place templates (example files) in that folder with the types of files you want to be able to create. Then they will show in this menu.' where=window.is_desktop find='open templates' in=str.replace("new+", '&', '') separator='both')
                        //"NEW FOLDER" ENTRY IN "NEW+" MENU
                    //POWERTOYS

                } //menu(title='Windows Internal Context Menu Entries')
            //WINDOWS INTERNAL FUNCTIONS

        } //menu(title='middle')
    //MIDDLE

    //

    //BOTTOM
        menu(title='Bottom' image=\uE1E5 tip='A placeholder for context menu entries in the bottom area' where=window.is_desktop expanded='true' position='bottom')
        {



        } //menu(title='Bottom')
    //BOTTOM

//BODY