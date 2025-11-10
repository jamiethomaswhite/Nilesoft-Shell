//HEADER

    // Thanks to moudey for creating Shell
    // https://github.com/moudey/Shell
    //
    // and RubicBG for all the useful snippets and support
    // https://github.com/RubicBG/Nilesoft-Shell-Snippets/

    //

    //HIDE LIST

        modify(type='file' where=str.equals(this.name, ["open in new tab", "open in new window", "paste"]) visibility='hidden')

    //HIDE LIST

//HEADER

//

//BODY

    //TOP
        menu(title='Top' tip='A placeholder for context menu entries in the top area' type='file' expanded='true' position='top')
        {

            //7-ZIP
                menu(title='7-Zip' image=\uE25F /*https://nilesoft.org/glyphs/e25f*/ tip='A 7-Zip sub-menu for extraction/archiving operations' expanded='true' position='top')
                {

                    //LOGIC
                        $sel_air = str.replace('"-air!@sel(false, '" "-air!')#', '" "-air#', '" -an')
                        //EXECUTABLES
                            $cmd_7zipG = path.combine(sys.prog,'7-Zip','7zG.exe')
                            $cmd_7zipA = path.combine(sys.prog,'7-Zip','7zFM.exe')
                        //EXECUTABLES
                        //FORMATS
                            $se7zP = '7z|xz|bz2|gz|tar|zip|wim'
                            $se7zU = 'apfs|ar|arj|cab|chm|cpio|cramfs|dmg|ext|fat|gpt|hfs|ihex|iso|lzh|lzma|mbr|msi|nsis|ntfs|qcow2|rar|rpm|squashfs|udf|uefi|vdi|vhd|vhdx|vmdk|xar|z' + '|docx|xlsx|pptx|odt|ods|odp|odg|odf|ott|ots|otp'
                        //FORMATS
                    //LOGIC

                    //EXTRACT
                        item(title='Extract'+if(sel.count==1, ' to "@sel.title"', ' each archive to separate folder') image=\uE0AA type='file' find='.zip|.7z|.rar|.tar|.gz|.tar.gz' position=0
                        cmd=cmd_7zipG arguments='x @sel_air -o*\ -spe')
                    //EXTRACT

                    //OPEN IN 7-ZIP
                        item(title='Open in 7-Zip' image=\uE0A4 type='file' mode='single' find='.zip|.7z|.rar|.tar|.gz|.tar.gz' position=1
                        cmd=cmd_7zipA arguments=sel(true))
                    //OPEN IN 7-ZIP

                } //menu(title='7-Zip')
            //7-ZIP

        } //menu(title='top')
    //TOP

    //

    //MIDDLE
        menu(title='Middle' tip='A placeholder for context menu entries in the middle area' type='file' expanded='true' position='middle')
        {

            //WINDOWS INTERNAL FUNCTIONS
                menu(title='Windows Internal Context Menu Entries' image=\uE25F /*https://nilesoft.org/glyphs/e25f*/ tip='A placeholder for the Windows internal context menu entries' type='file' expanded='true' position='middle')
                {

                    //INSTALL
                        modify(title='Install' image=\uE10D /*https://nilesoft.org/glyphs/e10d*/ tip='Install the currently selected item/s' type='file' where=str.equals(this.name, ["install"]) separator='after' position=0)
                    //INSTALL

                    //INSTALL PROFILE
                        modify(title='Install profile' image=\uE10D /*https://nilesoft.org/glyphs/e10d*/ tip='Install profile/s to the local system' type='file' where=str.equals(this.name, ["install profile"]) separator='after' position=0)
                    //INSTALL PROFILE

                    //MERGE
                        modify(title='Merge' image=\uE142 /*https://nilesoft.org/glyphs/e142*/ tip='Merge key/s into the local registry' type='file' where=str.equals(this.name, ["merge"]) separator='after' position=0)
                    //MERGE

                    //MOUNT
                        modify(title='Mount' image=\uE046 /*https://nilesoft.org/glyphs/e046*/ tip='Mount image locally' type='file' where=str.equals(this.name, ["mount"]) separator='after' position=0)
                    //MOUNT

                    //OPEN
                        modify(title='Open' image=\uE0A4 /*https://nilesoft.org/glyphs/e0a4*/ tip='Open currently selected item/s' keys='Enter' type='file' where=str.equals(this.name, ["open"]) separator='after' position=0)
                    //OPEN

                    //OPEN ORIGINAL LOCATION
                        modify(title='Open original location' image=\uE0D5 /*https://nilesoft.org/glyphs/e0d5*/ tip='Open the true location of the currently selected item/s' type='file' where=str.equals(this.name, ["open file location", "open folder location"]) separator='both' position=1)
                    //OPEN ORIGINAL LOCATION

                    //RUN WITH POWERSHELL
                        modify(title='Run with PowerShell' image=\uE218 /*https://nilesoft.org/glyphs/e218*/ tip='Run the currently selected item/s with PowerShell' type='file' where=str.equals(this.name, ["run with powershell"]) separator='after' position=indexof('run as administrator', 0))
                    //RUN WITH POWERSHELL

                    //RUN AS ADMINISTRATOR
                        modify(title='Run as administrator' image=\uE100 /*https://nilesoft.org/glyphs/e100*/ tip='Run the currently selected item/s as an admin user' type='file' where=str.equals(this.name, ["run as administrator"]) separator='after' position=indexof('run as a different user', 0))
                    //RUN AS ADMINISTRATOR

                    //RUN AS A DIFFERENT USER
                        modify(title='Run as a different user' image=\uE09F /*https://nilesoft.org/glyphs/e09f*/ tip='Run the currently selected item/s as another user' type='file' where=str.equals(this.name, ["run as a different user"]) separator='after' position=indexof('cut', 0))
                    //RUN AS A DIFFERENT USER

                    //CUT
                        modify(title='Cut' image=\uE0B8 /*https://nilesoft.org/glyphs/e0b8*/ tip='Cut the currently selected item/s and hold in the clipboard for destructive pasting' keys='Ctrl+X' type='file' where=str.equals(this.name, ["cut"]) separator='before' position=indexof('copy', 0))
                    //CUT

                    //COPY
                        modify(title='Copy' image=\uE0B2 /*https://nilesoft.org/glyphs/e0b2*/ tip='Copy the currently selected item/s and hold in the clipboard for safe pasting' keys='Ctrl+C' type='file' where=str.equals(this.name, ["copy"]) separator='after' position=indexof('cut', 1))
                    //COPY

                    //DELETE
                        modify(title='Delete' image=\uE0B4 /*https://nilesoft.org/glyphs/e0b4*/ tip='Send the currently selected item/s to the Recycle Bin' keys='Delete' type='file' where=str.equals(this.name, ["delete"]) separator='after' position=indexof('copy', 1))
                    //DELETE

                    //RENAME
                        modify(title='Rename' image=\uE0B5 /*https://nilesoft.org/glyphs/e0b5*/ tip='Change the name of the currently selected item' keys='F2' type='file' where=str.equals(this.name, ["rename"]) separator='after' position=indexof('delete', 1))
                    //RENAME

                    //CREATE SHORTCUT
                        modify(title='Create shortcut' image=\uE016 /*https://nilesoft.org/glyphs/e016*/ tip='create a shorcut to the currently selected item' type='file' where=str.equals(this.name, ["create shortcut"]) separator='after' position=indexof('rename', 1))
                    //CREATE SHORTCUT

                    //PROPERTIES
                        modify(title='Properties' image=\uE113 /*https://nilesoft.org/glyphs/e113*/ tip='View and control finer details of the currently selected item/s' keys='Alt+Enter' type='file' where=str.equals(this.name, ["properties"]) separator='after' position=indexof('create shortcut', 1))
                    //PROPERTIES

                } //menu(title='Windows Internal Context Menu Entries')
            //WINDOWS INTERNAL FUNCTIONS

        } //menu(title='middle')
    //MIDDLE

    //

    //BOTTOM
        menu(title='Bottom' image=\uE1E5 tip='A placeholder for context menu entries in the bottom area' type='file' expanded='true' position='bottom')
        {



        } //menu(title='Bottom')
    //BOTTOM

//BODY