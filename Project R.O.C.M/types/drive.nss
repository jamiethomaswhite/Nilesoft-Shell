//HEADER

    // Thanks to moudey for creating Shell
    // https://github.com/moudey/Shell
    //
    // and RubicBG for all the useful snippets and support
    // https://github.com/RubicBG/Nilesoft-Shell-Snippets/

    //

    //HIDE LIST

        modify(type='drive' where=str.equals(this.name, ["copy", "cut", "new+"]) visibility='hidden')

    //HIDE LIST

//HEADER

//

//BODY

    //WINDOWS INTERNAL FUNCTIONS
        menu(title='Windows Internal Context Menu Entries' image=\uE25F /*https://nilesoft.org/glyphs/e25f*/ tip='A placeholder for the Windows internal context menu entries' type='drive' expanded='true' position='middle')
        {

            //UNPIN FROM QUICK ACCESS
                modify(title='Unpin from quick access' image=\uE0C7 /*https://nilesoft.org/glyphs/e0c7*/ tip='Unpin the currently selected item/s from quick access' type='drive' where=str.equals(this.name, ["unpin from quick access"]) separator='after' position=0)
            //UNPIN FROM QUICK ACCESS

            //OPEN
                modify(title='Open' image=\uE0A4 /*https://nilesoft.org/glyphs/e0a4*/ tip='Open currently selected item/s' keys='Enter' type='drive' where=str.equals(this.name, ["open"]) separator='none' position='middle')
            //OPEN

            //OPEN IN NEW TAB
                modify(title='Open in new tab' image=\uE0A6 /*https://nilesoft.org/glyphs/e0a6*/ tip='Open currently selected item/s in a new tab' type='drive' where=str.equals(this.name, ["open in new tab"]) separator='none' position='middle')
            //OPEN IN NEW TAB

            //OPEN IN NEW WINDOW
                modify(title='Open in new window' image=\uE274 /*https://nilesoft.org/glyphs/e274*/ tip='Open currently selected item/s in a new window' type='drive' where=str.equals(this.name, ["open in new window"]) separator='after' position='middle')
            //OPEN IN NEW WINDOW

            //OPEN IN TERMINAL
                item(title='Open in Terminal' image=\uE0AB /*https://nilesoft.org/glyphs/e0ab*/ tip='Open the currently selected directory in Terminal' type='drive' visibility=key.shift() separator='none' position=indexof('open in new window', 1)
                cmd='wt.exe' arguments='-d "@sel.path\."')
            //OPEN IN TERMINAL

            //OPEN IN ELEVATED TERMINAL
                item(title='Open in Elevated Terminal' image=\uE0AB /*https://nilesoft.org/glyphs/e0ab*/ tip='Open the currently selected directory in Terminal as administrator' type='drive' visibility=key.shift() separator='after' position=indexof('open in terminal', 1)
                admin cmd='wt.exe' arguments='-d "@sel.path\."')
            //OPEN IN ELEVATED TERMINAL

            //PASTE
                modify(title='Paste' image=\uE0b1 /*https://nilesoft.org/glyphs/e0b1*/ tip='Paste the currently held item/s from the clipbaord to the selected position' keys='Ctrl+V' type='drive' where=str.equals(this.name, ["paste"]) separator='after' position=indexof('format', 0))
            //PASTE

            //EJECT
                modify(title='Eject' image=\uE0CC /*https://nilesoft.org/glyphs/e0cc*/ tip='Eject the currently selected item' type='drive' where=str.equals(this.name, ["eject"]) separator='after' position=indexof('open in elevated terminal', 1))
            //EJECT

            //FORMAT
                modify(title='Format' image=\uE231 /*https://nilesoft.org/glyphs/e231*/ tip='Format the currently selected item' type='drive' where=str.equals(this.name, ["format"]) separator='after' position=indexof('eject', 1))
            //FORMAT

            //RENAME
                modify(title='Rename' image=\uE0B5 /*https://nilesoft.org/glyphs/e0b5*/ tip='Change the name of the currently selected item' keys='F2' type='drive' where=str.equals(this.name, ["rename"]) separator='after' position=indexof('format', 1))
            //RENAME

            //CREATE SHORTCUT
                modify(title='Create shortcut' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ tip='create a shorcut to the currently selected item' type='drive' where=str.equals(this.name, ["create shortcut"]) separator='after' position=indexof('rename', 1))
            //CREATE SHORTCUT

            //PROPERTIES
                modify(title='Properties' image=\uE113 /*https://nilesoft.org/glyphs/e113*/ tip='View and control finer details of the currently selected item/s' keys='Alt+Enter' type='drive' where=str.equals(this.name, ["properties"]) separator='none' position=indexof('create shortcut', 1))
            //PROPERTIES

        } //menu(title='Windows Internal')
    //WINDOWS INTERNAL FUNCTIONS

//BODY