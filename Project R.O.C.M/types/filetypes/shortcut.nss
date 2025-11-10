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
        menu(title='Top' tip='A placeholder for context menu entries in the top area' type='*' find='.lnk' expanded='true' position='top')
        {



        } //menu(title='top')
    //TOP

    //

//MIDDLE
        menu(title='Middle' tip='A placeholder for context menu entries in the middle area' type='*' find='.lnk' expanded='true' position='middle')
        {

            //WINDOWS INTERNAL FUNCTIONS
                menu(title='Windows Internal Context Menu Entries' image=\uE25F /*https://nilesoft.org/glyphs/e25f*/ tip='A placeholder for the Windows internal context menu entries' type='*' find='.lnk' expanded='true' position='middle')
                {

                    //OPEN
                        modify(title='Open' image=\uE0A4 /*https://nilesoft.org/glyphs/e0a4*/ tip='Open currently selected item/s' keys='Enter' type='*' find='.lnk' where=str.equals(this.name, ["open"]) separator='after' position=0)
                    //OPEN

                    //OPEN ORIGINAL LOCATION
                        modify(title='Open original location' image=\uE0D5 /*https://nilesoft.org/glyphs/e0d5*/ tip='Open the true location of the currently selected item/s' type='*' find='.lnk' where=str.equals(this.name, ["open file location", "open folder location"]) separator='both' position=1)
                    //OPEN ORIGINAL LOCATION

                    //RUN AS ADMINISTRATOR
                        modify(title='Run as administrator' image=\uE100 /*https://nilesoft.org/glyphs/e100*/ tip='Run the currently selected item/s as an admin user' type='*' find='.lnk' where=str.equals(this.name, ["run as administrator"]) separator='after' position=2)
                    //RUN AS ADMINISTRATOR

                    //RUN AS A DIFFERENT USER
                        modify(title='Run as a different user' image=\uE09F /*https://nilesoft.org/glyphs/e09f*/ tip='Run the currently selected item/s as another user' type='*' find='.lnk' where=str.equals(this.name, ["run as a different user"]) separator='after' position=indexof('run as administrator', 1))
                    //RUN AS A DIFFERENT USER

                    //FORMAT
                        modify(title='Format' image=\uE231 /*https://nilesoft.org/glyphs/e231*/ tip='Format the currently selected item' type='*' where=str.equals(this.name, ["format"]) separator='both' position=indexof('cut', 0))
                    //FORMAT

                    //CUT
                        modify(title='Cut' image=\uE0B8 /*https://nilesoft.org/glyphs/e0b8*/ tip='Cut the currently selected item/s and hold in the clipboard for destructive pasting' keys='Ctrl+X' type='*' find='.lnk' find='.lnk' where=str.equals(this.name, ["cut"]) separator='before' position=indexof('copy', 0))
                    //CUT

                    //COPY
                        modify(title='Copy' image=\uE0B2 /*https://nilesoft.org/glyphs/e0b2*/ tip='Copy the currently selected item/s and hold in the clipboard for safe pasting' keys='Ctrl+C' type='*' find='.lnk' where=str.equals(this.name, ["copy"]) separator='after' position=indexof('cut', 1))
                    //COPY

                    //DELETE
                        modify(title='Delete' image=\uE0B4 /*https://nilesoft.org/glyphs/e0b4*/ tip='Send the currently selected item/s to the Recycle Bin' keys='Delete' type='*' find='.lnk' where=str.equals(this.name, ["delete"]) separator='after' position=indexof('copy', 1))
                    //DELETE

                    //RENAME
                        modify(title='Rename' image=\uE0B5 /*https://nilesoft.org/glyphs/e0b5*/ tip='Change the name of the currently selected item' keys='F2' type='*' find='.lnk' where=str.equals(this.name, ["rename"]) separator='after' position=indexof('delete', 1))
                    //RENAME

                    //CREATE SHORTCUT
                        modify(title='Create shortcut' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ tip='create a shorcut to the currently selected item' type='*' find='.lnk' where=str.equals(this.name, ["create shortcut"]) separator='after' position=indexof('rename', 1))
                    //CREATE SHORTCUT

                    //POWERTOYS
                        //NEW+ MENU
                            modify(title='New' image=\uE283 /*https://nilesoft.org/glyphs/e283*/ tip='A menu for creating new empty items from user createable templates' type='*' find='.lnk' where=str.equals(this.name, ["new"]) separator='both' position=indexof('properties', -1))
                        //NEW+ MENU

                        //"NEW FOLDER" ENTRY IN "NEW+" MENU
                            modify(title='New folder' image=\uE0E5 /*https://nilesoft.org/glyphs/e0e5*/ tip='Create a new empty folder at the currently selected location' keys='Ctrl+Shift+N' type='*' find='.lnk' where=str.equals(this.name, ["new folder"]) in=str.replace("new+", '&', '') separator='both')
                        //"NEW FOLDER" ENTRY IN "NEW+" MENU

                        //"OPEN TEMPLATES FOLDER" ENTRY IN "NEW+" MENU
                            modify(title='Open templates folder' image=\uE0E8 /*https://nilesoft.org/glyphs/e0e8*/ tip='Open the templates folder in File Explorer' + "\n\n" + 'Place templates (example files) in that folder with the types of files you want to be able to create. Then they will show in this menu.' type='*' find='.lnk' where=str.equals(this.name, ["open templates"]) in=str.replace("new+", '&', '') separator='both')
                        //"NEW FOLDER" ENTRY IN "NEW+" MENU
                    //POWERTOYS

                    //PROPERTIES
                        modify(title='Properties' image=\uE113 /*https://nilesoft.org/glyphs/e113*/ tip='View and control finer details of the currently selected item/s' keys='Alt+Enter' type='*' find='.lnk' where=str.equals(this.name, ["properties"]) separator='after' position=indexof('new', 1))
                    //PROPERTIES

                } //menu(title='Windows Internal Context Menu Entries')
            //WINDOWS INTERNAL FUNCTIONS

        } //menu(title='middle')
    //MIDDLE

    //

    //BOTTOM
        menu(title='Bottom' image=\uE1E5 tip='A placeholder for context menu entries in the bottom area' type='*' find='.lnk' expanded='true' position='bottom')
        {



        } //menu(title='Bottom')
    //BOTTOM

//BODY