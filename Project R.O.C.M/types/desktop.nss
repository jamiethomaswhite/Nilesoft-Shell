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

    //WINDOWS INTERNAL FUNCTIONS
        menu(title='Windows Internal Context Menu Entries' image=\uE25F /*https://nilesoft.org/glyphs/e25f*/ tip='A placeholder for the Windows internal context menu entries' type='desktop' expanded='true' position='middle')
        {

            //UNPIN FROM QUICK ACCESS
                modify(title='Unpin from quick access' image=\uE0C7 /*https://nilesoft.org/glyphs/e0c7*/ tip='Unpin the currently selected item/s from quick access' type='desktop' where=str.equals(this.name, ["unpin from quick access"]) separator='after' position='middle')
            //UNPIN FROM QUICK ACCESS

            //OPEN IN NEW TAB
                modify(title='Open in new tab' image=\uE0A6 /*https://nilesoft.org/glyphs/e0a6*/ tip='Open currently selected item/s in a new tab' type='desktop' where=str.equals(this.name, ["open in new tab"]) separator='none' position=indexof('unpin from quick access', 1))
            //OPEN IN NEW TAB

            //OPEN IN NEW WINDOW
                modify(title='Open in new window' image=\uE274 /*https://nilesoft.org/glyphs/e274*/ tip='Open currently selected item/s in a new window' type='desktop' where=str.equals(this.name, ["open in new window"]) separator='after' position=indexof('open in new tab', 1))
            //OPEN IN NEW WINDOW

            //PASTE
                modify(title='Paste' image=\uE0b1 /*https://nilesoft.org/glyphs/e0b1*/ tip='Paste the currently held item/s from the clipbaord to the selected position' keys='Ctrl+V' type='desktop' where=str.equals(this.name, ["paste"]) separator='after' position=indexof('copy', 0))
            //PASTE

            //COPY
                modify(title='Copy' image=\uE0B2 /*https://nilesoft.org/glyphs/e0b2*/ tip='Copy the currently selected item/s and hold in the clipboard for safe pasting' keys='Ctrl+C' type='desktop' where=str.equals(this.name, ["copy"]) separator='after' position=indexof('new+', 0))
            //COPY

            //POWERTOYS
                //NEW+ MENU
                    modify(title='New' image=\uE283 /*https://nilesoft.org/glyphs/e283*/ tip='A menu for creating new empty items from user createable templates' type='desktop' find='new+' separator='both' position=indexof('properties', 0))
                //NEW+ MENU

                //"NEW FOLDER" ENTRY IN "NEW+" MENU
                    modify(title='New folder' image=\uE0E5 /*https://nilesoft.org/glyphs/e0e5*/ tip='Create a new empty folder at the currently selected location' keys='Ctrl+Shift+N' type='desktop' find='new folder' in=str.replace("new+", '&', '') separator='both')
                //"NEW FOLDER" ENTRY IN "NEW+" MENU

                //"OPEN TEMPLATES FOLDER" ENTRY IN "NEW+" MENU
                    modify(title='Open templates folder' image=\uE0E8 /*https://nilesoft.org/glyphs/e0e8*/ tip='Open templates folder location in File Explorer' + "\n\n" + 'Place templates (example files) in this folder with the types of files you wish to be able to create and they will show in the New menu entry of the context menu' type='desktop' find='open templates' in=str.replace("new+", '&', '') separator='both')
                //"NEW+" MENU
            //POWERTOYS

            //PROPERTIES
                modify(title='Properties' image=\uE113 /*https://nilesoft.org/glyphs/e113*/ tip='View and control finer details of the currently selected item/s' keys='Alt+Enter' type='desktop' where=str.equals(this.name, ["properties"]) separator='none' position=indexof('new+', 1))
            //PROPERTIES

        } //menu(title='Windows Internal Context Menu Entries')
    //WINDOWS INTERNAL FUNCTIONS

//BODY