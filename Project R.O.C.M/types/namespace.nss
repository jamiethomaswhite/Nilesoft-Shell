//HEADER

    // Thanks to moudey for creating Shell
    // https://github.com/moudey/Shell
    //
    // and RubicBG for all the useful snippets and support
    // https://github.com/RubicBG/Nilesoft-Shell-Snippets/

    //

    //HIDE LIST

	modify(type='namespace' where=str.equals(this.name, ["delete", "new", "rename"]) visibility='hidden')

    //HIDE LIST

//HEADER

//

//BODY

    //WINDOWS INTERNAL FUNCTIONS
        menu(title='Windows Internal Context Menu Entries' image=\uE25F /*https://nilesoft.org/glyphs/e25f*/ tip='A placeholder for the Windows internal context menu entries' type='namespace' expanded='true' position='middle')
        {

            //UNPIN FROM QUICK ACCESS
                modify(title='Unpin from quick access' image=\uE0C7 /*https://nilesoft.org/glyphs/e0c7*/ tip='Unpin the currently selected item/s from quick access' type='namespace' where=str.equals(this.name, ["unpin from quick access"]) separator='after' position=0)
            //UNPIN FROM QUICK ACCESS

            //EMPTY RECYCLE BIN
                modify(title='Empty recycle bin' image=\uE0B4 /*https://nilesoft.org/glyphs/e0b4*/ tip='Empty the current contents of the recycle bin, deleting them permanently' type='recyclebin' where=str.equals(this.name, ["empty recycle bin"]) separator='after' position=0)
            //EMPTY RECYCLE BIN

            //OPEN IN NEW TAB
                modify(title='Open in new tab' image=\uE0A6 /*https://nilesoft.org/glyphs/e0a6*/ tip='Open currently selected item/s in a new tab' type='namespace' where=str.equals(this.name, ["open in new tab"]) separator='none' position=1)
            //OPEN IN NEW TAB

            //OPEN IN NEW WINDOW
                modify(title='Open in new window' image=\uE274 /*https://nilesoft.org/glyphs/e274*/ tip='Open currently selected item/s in a new window' type='namespace' where=str.equals(this.name, ["open in new window"]) separator='after' position=2)
            //OPEN IN NEW WINDOW

            //PROPERTIES
                modify(title='Properties' image=\uE113 /*https://nilesoft.org/glyphs/e113*/ tip='View and control finer details of the currently selected item/s' keys='Alt+Enter' type='namespace' where=str.equals(this.name, ["properties"]) separator='none' position=indexof('pen in new window', 1))
            //PROPERTIES

        } //menu(title='Windows Internal Context Menu Entries')
    //WINDOWS INTERNAL FUNCTIONS

//BODY