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

    modify(type='drive' where=str.equals(this.name, ["turn bitlocker on", "open with vscodium", "scan with microsoft defender", "give access to", "teracopy", "new folder with selection", "restore previous versions", "pin to start", "copy", "pin to quick access", "create shortcut"]) visibility='hidden')

    //HIDE LIST

    //

    //ENTRIES

        //WINDOWS INTERNAL FUNCTIONS
            menu(title='Windows Internal Context Menu Entries' image=\uE25F /*https://nilesoft.org/glyphs/e25f*/ tip='A placeholder for the Windows internal context menu entries' type='drive' expanded='true')
			{
        
                //OPEN
                modify(title='Open' image=\uE0A4 /*https://nilesoft.org/glyphs/e0a4*/ tip='Open currently selected item/s' type='drive' where=str.equals(this.name, ["open"]) separator='none')

                //OPEN IN NEW TAB
                modify(title='Open in new tab' image=\uE0A6 /*https://nilesoft.org/glyphs/e0a6*/ tip='Open currently selected item/s in a new tab' type='drive' where=str.equals(this.name, ["open in new tab"]) separator='none')

                //OPEN IN NEW WINDOW
                modify(title='Open in new window' image=\uE274 /*https://nilesoft.org/glyphs/e274*/ tip='Open currently selected item/s in a new window' type='drive' where=str.equals(this.name, ["open in new window"]) separator='after')

                //FORMAT
                modify(title='Format' image=\uE231 /*https://nilesoft.org/glyphs/e231*/ tip='Format the currently selected item' type='drive' where=str.equals(this.name, ["format"]) separator='both')

                //PASTE
                modify(title='Paste' image=\uE0b1 /*https://nilesoft.org/glyphs/e0b1*/ tip='Paste the currently held item/s from the clipbaord to the selected position' type='drive' where=str.equals(this.name, ["paste"]) separator='both')

                //RENAME
                modify(title='Rename' image=\uE0B5 /*https://nilesoft.org/glyphs/e0b5*/ tip='Change the name of the currently selected item' type='drive' where=str.equals(this.name, ["rename"]) separator='after')

                //NEW
                modify(title='New' image=\uE160 /*https://nilesoft.org/glyphs/e160*/ tip='A sub-menu for creating new empty files or folders' type='drive' where=str.equals(this.name, ["new"]) separator='both')

                //PROPERTIES
                modify(title='Properties' image=\uE113 /*https://nilesoft.org/glyphs/e113*/ tip='View and control finer details of the currently selected item/s' type='drive' where=str.equals(this.name, ["properties"]) separator='none')

    } //menu(title='Windows Internal')

    //ENTRIES

//MODIFIERS

//

//PLUGINS



//PLUGINS

