//HEADER

    // Thanks to moudey for creating Shell
    // https://github.com/moudey/Shell
    //
    // and RubicBG for all the useful snippets and support
    // https://github.com/RubicBG/Nilesoft-Shell-Snippets/

    //

    //HIDE LIST

        modify(type='dir' where=str.equals(this.name, ["new+"]) visibility='hidden')

    //HIDE LIST

//HEADER

//

//BODY

    //TOP
        menu(title='Top' tip='A placeholder for context menu entries in the top area' type='dir' expanded='true' position='top')
        {



        } //menu(title='top')
    //TOP

    //

    //MIDDLE
        menu(title='Middle' tip='A placeholder for context menu entries in the middle area' type='dir' expanded='true' position='middle')
        {

            //WINDOWS INTERNAL FUNCTIONS
                menu(title='Windows Internal Context Menu Entries' image=\uE25F /*https://nilesoft.org/glyphs/e25f*/ tip='A placeholder for the Windows internal context menu entries' type='dir' expanded='true' position='middle')
                {

                    //UNPIN FROM QUICK ACCESS
                        modify(title='Unpin from quick access' image=\uE0C7 /*https://nilesoft.org/glyphs/e0c7*/ tip='Unpin the currently selected item/s from quick access' type='dir' where=str.equals(this.name, ["unpin from quick access"]) separator='after' position=0)
                    //UNPIN FROM QUICK ACCESS

                    //OPEN
                        modify(title='Open' image=\uE0A4 /*https://nilesoft.org/glyphs/e0a4*/ tip='Open currently selected item/s' keys='Enter' type='dir' where=str.equals(this.name, ["open"]) separator='none' position='middle')
                    //OPEN

                    //OPEN IN NEW TAB
                        modify(title='Open in new tab' image=\uE0A6 /*https://nilesoft.org/glyphs/e0a6*/ tip='Open currently selected item/s in a new tab' type='dir' where=str.equals(this.name, ["open in new tab"]) separator='none' position='middle')
                    //OPEN IN NEW TAB

                    //OPEN IN NEW WINDOW
                        modify(title='Open in new window' image=\uE274 /*https://nilesoft.org/glyphs/e274*/ tip='Open currently selected item/s in a new window' type='dir' where=str.equals(this.name, ["open in new window"]) separator='after' position='middle')
                    //OPEN IN NEW WINDOW

                    //OPEN IN TERMINAL
                        item(title='Open in Terminal' image=\uE0AB /*https://nilesoft.org/glyphs/e0ab*/ tip='Open the currently selected directory in Terminal' type='dir' visibility=key.shift() separator='before' position=indexof('open in new window', 1)
                        cmd='wt.exe' arguments='-d "@sel.path\."')
                    //OPEN IN TERMINAL

                    //OPEN IN ELEVATED TERMINAL
                        item(title='Open in Elevated Terminal' image=\uE0AB /*https://nilesoft.org/glyphs/e0ab*/ tip='Open the currently selected directory in Terminal as administrator' type='dir' visibility=key.shift() separator='after' position=indexof('open in terminal', 1)
                        admin cmd='wt.exe' arguments='-d "@sel.path\."')
                    //OPEN IN ELEVATED TERMINAL

                    //PASTE
                        modify(title='Paste' image=\uE0b1 /*https://nilesoft.org/glyphs/e0b1*/ tip='Paste the currently held item/s from the clipbaord to the selected position' keys='Ctrl+V' type='dir' where=str.equals(this.name, ["paste"]) separator='after' position=indexof('cut', 0))
                    //PASTE

                    //CUT
                        modify(title='Cut' image=\uE0B8 /*https://nilesoft.org/glyphs/e0b8*/ tip='Cut the currently selected item/s and hold in the clipboard for destructive pasting' keys='Ctrl+X' type='dir' where=str.equals(this.name, ["cut"]) separator='before' position='middle')
                    //CUT

                    //COPY
                        modify(title='Copy' image=\uE0B2 /*https://nilesoft.org/glyphs/e0b2*/ tip='Copy the currently selected item/s and hold in the clipboard for safe pasting' keys='Ctrl+C' type='dir' where=str.equals(this.name, ["copy"]) separator='after' position=indexof('cut', 1))
                    //COPY

                    //DELETE
                        modify(title='Delete' image=\uE0B4 /*https://nilesoft.org/glyphs/e0b4*/ tip='Send the currently selected item/s to the Recycle Bin' keys='Delete' type='dir' where=str.equals(this.name, ["delete"]) separator='after' position=indexof('copy', 1))
                    //DELETE

                    //RENAME
                        modify(title='Rename' image=\uE0B5 /*https://nilesoft.org/glyphs/e0b5*/ tip='Change the name of the currently selected item' keys='F2' type='dir' where=str.equals(this.name, ["rename"]) separator='after' position=indexof('delete', 1))
                    //RENAME

                    //CREATE SHORTCUT
                        modify(title='Create shortcut' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ tip='create a shorcut to the currently selected item' type='dir' where=str.equals(this.name, ["create shortcut"]) separator='after' position=indexof('rename', 1))
                    //CREATE SHORTCUT

                    //PROPERTIES
                        modify(title='Properties' image=\uE113 /*https://nilesoft.org/glyphs/e113*/ tip='View and control finer details of the currently selected item/s' keys='Alt+Enter' type='dir' where=str.equals(this.name, ["properties"]) separator='none' position=indexof('create shortcut', 1))
                    //PROPERTIES

                } //menu(title='Windows Internal Context Menu Entries')
            //WINDOWS INTERNAL FUNCTIONS

        } //menu(title='middle')
    //MIDDLE

    //

    //BOTTOM
        menu(title='Bottom' image=\uE1E5 tip='A placeholder for context menu entries in the bottom area' type='dir' expanded='true' position='bottom')
        {



        } //menu(title='Bottom')
    //BOTTOM

//BODY