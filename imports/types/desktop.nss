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

	modify(type='desktop' where=str.equals(this.name, ["expand", "send with quick share", "defenderui add exclusion", "take ownership", "scan with microsoft defender", "give access to", "teracopy", "new folder with selection", "restore previous versions", "include in library", "pin to start", "copy as path", "send to", "view", "sort by", "refresh", "open in terminal", "open powershell window here", "open with vscodium", "paste shortcut", "undo delete", "copy", "display settings", "personalise"]) visibility='hidden')

	//HIDE LIST

	//

    //ENTRIES

        //WINDOWS INTERNAL FUNCTIONS
            menu(title='Windows Internal Context Menu Entries' image=\uE25F /*https://nilesoft.org/glyphs/e25f*/ tip='A placeholder for the Windows internal context menu entries' type='desktop' expanded='true')
			{

                //OPEN
                modify(title='Open' image=\uE0A4 /*https://nilesoft.org/glyphs/e0a4*/ tip='Open currently selected item/s' type='desktop' where=str.equals(this.name, ["open"]) separator='before')

                //OPEN IN NEW TAB
                modify(title='Open in new tab' image=\uE0A6 /*https://nilesoft.org/glyphs/e0a6*/ tip='Open currently selected item/s in a new tab' type='desktop' where=str.equals(this.name, ["open in new tab"]) separator='none')

                //OPEN IN NEW WINDOW
                modify(title='Open in new window' image=\uE274 /*https://nilesoft.org/glyphs/e274*/ tip='Open currently selected item/s in a new window' type='desktop' where=str.equals(this.name, ["open in new window"]) separator='after')

                //UNPIN FROM QUICK ACCESS
                modify(title='Unpin from quick access' image=\uE0C7 /*https://nilesoft.org/glyphs/e0c7*/ tip='Unpin the currently selected item/s from quick access' type='desktop' where=str.equals(this.name, ["unpin from quick access"]) separator='both')

                //PASTE
                modify(title='Paste' image=\uE0b1 /*https://nilesoft.org/glyphs/e0b1*/ tip='Paste the currently held item/s from the clipbaord to the selected position' type='back' where=str.equals(this.name, ["paste"]) separator='after')

                //NEW
                modify(title='New' image=\uE160 /*https://nilesoft.org/glyphs/e160*/ tip='A sub-menu for creating new empty files or folders' type='back' where=str.equals(this.name, ["new"]) separator='both')

                //PROPERTIES
                modify(title='Properties' image=\uE113 /*https://nilesoft.org/glyphs/e113*/ tip='View and control finer details of the currently selected item/s' type='desktop' where=str.equals(this.name, ["properties"]) separator='none')

			} //menu(title='Windows Internal Context Menu Entries')
        //WINDOWS INTERNAL FUNCTIONS

    //ENTRIES

//MODIFIERS

//

//PLUGINS



//PLUGINS
