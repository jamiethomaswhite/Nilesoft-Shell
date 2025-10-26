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

    modify(type='back' where=str.equals(this.name, ["view", "sort by", "group by", "refresh", "customise this folder", "open in terminal", "open powershell window here", "open with vscodium", "add a network location", "give access to", "undo delete", "paste shortcut", "undo rename"]) visibility='hidden')

    //HIDE LIST

    //

    //ENTRIES

        //WINDOWS INTERNAL FUNCTIONS
            menu(title='Windows Internal Context Menu Entries' image=\uE25F /*https://nilesoft.org/glyphs/e25f*/ tip='A placeholder for the Windows internal context menu entries' type='back' expanded='true')
			{

                //PASTE
                modify(title='Paste' image=\uE0b1 /*https://nilesoft.org/glyphs/e0b1*/ tip='Paste the currently held item/s from the clipbaord to the selected position' type='back' where=str.equals(this.name, ["paste"]) separator='after')

                //NEW
                modify(title='New' image=\uE160 /*https://nilesoft.org/glyphs/e160*/ tip='A sub-menu for creating new empty files or folders' type='back' where=str.equals(this.name, ["new"]) separator='both')

                //PROPERTIES
                modify(title='Properties' image=\uE113 /*https://nilesoft.org/glyphs/e113*/ tip='View and control finer details of the currently selected item/s' type='back' where=str.equals(this.name, ["properties"]) separator='none')

			} //menu(title='Windows Internal Context Menu Entries')
        //WINDOWS INTERNAL FUNCTIONS

    //ENTRIES

//MODIFIERS

//

//PLUGINS



//PLUGINS
