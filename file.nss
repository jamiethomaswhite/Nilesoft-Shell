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

    modify(type='file' where=str.equals(this.name, ["always available offline", "undo", "edit", "open with", "open with vscodium", "install for all users", "repair", "uninstall", "burn disc image", "preview", "expand", "view in 7-zip", "print", "run as different user", "open in new tab", "open in new window", "open in terminal", "set as desktop background", "send with quick share", "defenderui add exclusion", "add to favourites", "take ownership", "cast to device", "troubleshoot compatibility", "pin to start", "pin to quick access", "rotate right", "rotate left", "extract all", "scan with microsoft defender", "give access to", "teracopy", "new folder with selection", "pin to taskbar", "copy as path", "share", "restore previous versions", "send to", "paste", "create shortcut"]) visibility='hidden')

    //HIDE LIST

    //

    //ENTRIES

        //WINDOWS INTERNAL FUNCTIONS
            menu(title='Windows Internal Context Menu Entries' image=\uE25F /*https://nilesoft.org/glyphs/e25f*/ tip='A placeholder for the Windows internal context menu entries' type='file' expanded='true')
            {

                //OPEN
                modify(title='Open' image=\uE0A4 /*https://nilesoft.org/glyphs/e0a4*/ tip='Open currently selected item/s' type='file' where=str.equals(this.name, ["open"]) separator='after')

                //OPEN ORIGINAL LOCATION
                modify(title='Open original location' image=\uE0D5 /*https://nilesoft.org/glyphs/e0d5*/ tip='Open the true location of the currently selected item/s' type='file' where=str.equals(this.name, ["open file location"]) separator='both')

                //RUN AS ADMINISTRATOR
                modify(title='Run as administrator' image=\uE100 /*https://nilesoft.org/glyphs/e100*/ tip='Run the currently selected item/s as an admin user' type='file' where=str.equals(this.name, ["run as administrator"]) separator='both')

                //INSTALL
                modify(title='Install' image=\uE10D /*https://nilesoft.org/glyphs/e10d*/ tip='Install the currently selected item/s' type='file' where=str.equals(this.name, ["install"]) separator='both')

                //INSTALL PROFILE
                modify(title='Install profile' image=\uE10D /*https://nilesoft.org/glyphs/e10d*/ tip='Install profile/s to the local system' type='file' where=str.equals(this.name, ["install profile"]) separator='both')

                //MERGE
                modify(title='Merge' image=\uE142 /*https://nilesoft.org/glyphs/e142*/ tip='Merge key/s into the local registry' type='file' where=str.equals(this.name, ["merge"]) separator='both')

                //MOUNT
                modify(title='Mount' image=\uE046 /*https://nilesoft.org/glyphs/e046*/ tip='Mount image locally' type='file' where=str.equals(this.name, ["mount"]) separator='both')

                //CUT
                modify(title='Cut' image=\uE0B8 /*https://nilesoft.org/glyphs/e0b8*/ tip='Cut the currently selected item/s and hold in the clipboard for destructive pasting' type='file' where=str.equals(this.name, ["cut"]) separator='before')

                //COPY
                modify(title='Copy' image=\uE0B2 /*https://nilesoft.org/glyphs/e0b2*/ tip='Copy the currently selected item/s and hold in the clipboard for safe pasting' type='file' where=str.equals(this.name, ["copy"]) separator='after')

                //DELETE
                modify(title='Delete' image=\uE0B4 /*https://nilesoft.org/glyphs/e0b4*/ tip='Send the currently selected item/s to the Recycle Bin' type='file' where=str.equals(this.name, ["delete"]) separator='after')

                //RENAME
                modify(title='Rename' image=\uE0B5 /*https://nilesoft.org/glyphs/e0b5*/ tip='Change the name of the currently selected item' type='file' where=str.equals(this.name, ["rename"]) separator='after')

                //NEW
                modify(title='New' image=\uE160 /*https://nilesoft.org/glyphs/e160*/ tip='A sub-menu for creating new empty files or folders' type='back' where=str.equals(this.name, ["new"]) separator='both')

                //PROPERTIES
                modify(title='Properties' image=\uE113 /*https://nilesoft.org/glyphs/e113*/ tip='View and control finer details of the currently selected item/s' type='file' where=str.equals(this.name, ["properties"]) separator='both')

            } //menu(title='Windows Internal Context Menu Entries')
        //WINDOWS INTERNAL FUNCTIONS

    //ENTRIES

//MODIFIERS

//

//PLUGINS

    menu(title='Plugins' image=\uE1E5 tip='A placeholder for the Nilesoft Shell context menu entries' type='file' expanded='true')
    {

        //MORE OPTIONS
            menu(title='More options' image=\uE167 position='bottom')
            {

                //7-ZIP
                    menu(title='7-Zip' image=\uE25F /*https://nilesoft.org/glyphs/e25f*/ tip='A 7-Zip sub-menu for extraction/archiving operations' expanded='true')
                    {

                        //LOGIC
                            //EXECUTABLES
                                $cmd_7zipC = path.combine(sys.prog,'7-Zip','7z.exe')
                                $cmd_7zipG = path.combine(sys.prog,'7-Zip','7zG.exe')
                                $cmd_7zipA = path.combine(sys.prog,'7-Zip','7zFM.exe')
                            //EXECUTABLES
                            //FORMATS
                                $se7zP = '7z|xz|bz2|gz|tar|zip|wim'
                                $se7zU = 'apfs|ar|arj|cab|chm|cpio|cramfs|dmg|ext|fat|gpt|hfs|ihex|iso|lzh|lzma|mbr|msi|nsis|ntfs|qcow2|rar|rpm|squashfs|udf|uefi|vdi|vhd|vhdx|vmdk|xar|z' + '|docx|xlsx|pptx|odt|ods|odp|odg|odf|ott|ots|otp'
                                $se7zC = 'sha256|sha512|sha224|sha384|sha1|sha|md5|crc32|crc64|asc|cksum'
                                $se7zM = 'txt|log|cfg|c|cpp|java|py|html|xml|ini|conf|yaml|json|bat|sh|ps1|csv|doc'
                            //FORMATS
                            //
                                $sel_air = str.replace('"-air!@sel(false, '" "-air!')#', '" "-air#', '" -an')
                                $is_se7z1=if(keys.shift(), '', str.replace('."'+se7zP+'|'+se7zU+'"', '|', '"|."'))
                                $is_se7z2=if(keys.shift(), '', str.replace('."'+se7zC+'"', '|', '"|."'))
                                $is_se7z3=str.replace('."'+se7zM+'"', '|', '"|."')
                            //
                            //SVG
                                $svg_7z_archive = image.svg('<svg height="100" width="100" viewBox="0 0 512 512">
                                    <path style="fill:@image.color2" d="M501.801 213.023H298.977V10.199h-85.954v202.824H10.199v85.954h202.824v202.824h85.954V298.977h202.824z"/>
                                    <path style="fill:#000000" d="M298.978 512h-85.956c-5.632 0-10.199-4.566-10.199-10.199V309.177H10.199C4.567 309.177 0 304.61 0 298.977v-85.956c0-5.633 4.567-10.199 10.199-10.199h192.623V10.199c0-5.633 4.568-10.199 10.2-10.199h85.956c5.632 0 10.199 4.566 10.199 10.199v192.623h192.624c5.632 0 10.199 4.566 10.199 10.199v85.956c0 5.633-4.567 10.199-10.199 10.199H309.178V501.8c0 5.634-4.568 10.2-10.2 10.2zm-75.757-20.398h65.557V298.977c0-5.633 4.567-10.199 10.199-10.199h192.624v-65.557H298.978c-5.632 0-10.199-4.566-10.199-10.199V20.398h-65.557v192.623c0 5.633-4.567 10.199-10.199 10.199H20.398v65.557h192.623c5.632 0 10.199 4.566 10.199 10.199v192.626z"/></svg>')
                                $svg_7z_extract = image.svg('<svg height="100" width="100" viewBox="0 0 512 512">
                                    <path style="fill:@image.color2" d="M10.199 213.021h491.602v85.959H10.199z"/>
                                    <path style="fill:#000000" d="M501.801 309.177H10.199C4.566 309.177 0 304.61 0 298.977v-85.955c0-5.633 4.566-10.199 10.199-10.199h491.602c5.632 0 10.199 4.566 10.199 10.199v85.955c0 5.633-4.567 10.2-10.199 10.2zM20.398 288.778h471.203v-65.556H20.398v65.556z"/></svg>')
                                $svg_7z_test	= image.svg('<svg height="100" width="100" viewBox="0 0 512 512">
                                    <path style="fill:@image.color2" d="m501.801 120.455-60.754-60.754-271.09 271.089-99.003-99.003-60.755 60.754 159.758 159.758z"/>
                                    <path style="fill:#000000" d="M169.957 462.498c-2.61 0-5.22-.995-7.212-2.987L2.987 299.753c-3.983-3.983-3.983-10.441 0-14.425l60.754-60.754a10.2 10.2 0 0 1 14.424 0l91.793 91.793L433.835 52.489c3.982-3.983 10.441-3.983 14.424 0l60.754 60.755c3.983 3.983 3.983 10.441 0 14.424L177.169 459.51a10.166 10.166 0 0 1-7.212 2.988zM24.623 292.541l145.335 145.334 317.42-317.42-46.33-46.33-263.879 263.878c-3.983 3.983-10.442 3.983-14.424 0L70.953 246.21l-46.33 46.331z"/></svg>')
                                $svg_7z_Info	= image.svg('<svg width="100" height="100" viewBox="-160 0 512 512">
                                    <path style="fill:@image.color2" d="M20 424.229h20V279.771H20c-11.046 0-20-8.954-20-20V212c0-11.046 8.954-20 20-20h112c11.046 0 20 8.954 20 20v212.229h20c11.046 0 20 8.954 20 20V492c0 11.046-8.954 20-20 20H20c-11.046 0-20-8.954-20-20v-47.771c0-11.046 8.954-20 20-20zM96 0C56.235 0 24 32.235 24 72s32.235 72 72 72 72-32.235 72-72S135.764 0 96 0z"/></svg>')
                            //SVG
                        //LOGIC

                        //EXTRACT
                            item(title='Extract'+if(sel.count==1, ' to "@sel.title"', ' each archive to separate folder') image=\uE0AA find='.zip|.7z|.rar|.tar|.gz|.tar.gz' mode='multiple'
                            cmd=cmd_7zipG args='x @sel_air -o*\ -spe')
                        //EXTRACT

                        //OPEN IN 7-ZIP
                            item(title='Open in 7-Zip' image=\uE0A4 find='.zip|.7z|.rar|.tar|.gz|.tar.gz' mode='single'
                            cmd=cmd_7zipA args=sel(true))
                        //OPEN IN 7-ZIP

                        separator()

                    } //menu(title='7-Zip')
                //7-ZIP

                //ADVANCED RENAME
                    //LOGIC
                        // temporary replace: path.file.ext(sel[x]) with io.meta(sel[x], 'System.FileExtension')
                        //SVG
                            $svg_renamer=image.svg('<svg width="100" height="100" viewBox="0 0 100 100">
                            <path fill="@image.color1" d="M34 48c-12 0-19 1-21 2-4.9 2-5 12-1 14 6 5 13 3 18-2 4-5 4-9 4-14m8-3v27h-8v-7c-7 8-21 11-28.4 4C0 63 1 50 6.7 46 14 40 24 42 34 42c-1-18-19-13-29.2-9v-7C17 22 27 20 37 28c4 4 5 9 5 17"/>
                            <path fill="@image.color1" d="M63 50c1 18 21 20 35 12v8c-20 7-43 3-43-22 0-16 8-25 23-25 17 0 21 11 21 27H63m29-6c-1-7-4-15-13-15-10 0-15 8-16 15h29"/>
                            <path fill="@image.color1" d="m46 2-1 96h7V2z"/></svg>')
                        //SVG
                    //LOGIC

                    menu(title='Advanced rename' mode='multiple' image=svg_renamer)
                    {

                        //LOGIC
                            //SVG
                                $svg_lcase=image.svg('<svg width="100" height="100" viewBox="0 0 16 16">
                                    <path fill="@image.color1" d="m7.29 11.1h-1.06v-0.7q-0.14 0.1-0.38 0.3t-0.47 0.3q-0.26 0.1-0.61 0.2-0.34 0.1-0.81 0.1-0.85 0-1.45-0.6-0.59-0.6-0.59-1.43 0-0.72 0.3-1.16 0.32-0.45 0.89-0.71 0.57-0.25 1.38-0.34t1.74-0.14v-0.16q0-0.36-0.13-0.6-0.12-0.24-0.36-0.37-0.23-0.13-0.54-0.18-0.32-0.05-0.67-0.05-0.42 0-0.93 0.12-0.52 0.11-1.06 0.31h-0.06v-1.08q0.31-0.08 0.9-0.18t1.16-0.1q0.67 0 1.16 0.11 0.5 0.11 0.86 0.37t0.54 0.68q0.19 0.41 0.19 1.02zm-1.06-1.56v-1.76q-0.49 0-1.15 0.1-0.65 0-1.04 0.16-0.46 0.12-0.74 0.4-0.28 0.27-0.28 0.75 0 0.55 0.32 0.81 0.33 0.3 1.01 0.3 0.56 0 1.02-0.2 0.47-0.25 0.86-0.56z"/>
                                    <path fill="@image.color1" d="m14.3 11.1h-1.1v-0.7q-0.1 0.1-0.4 0.3-0.2 0.2-0.5 0.3-0.2 0.1-0.6 0.2-0.3 0.1-0.8 0.1-0.8 0-1.43-0.6-0.59-0.6-0.59-1.43 0-0.72 0.31-1.16 0.31-0.45 0.91-0.71 0.5-0.25 1.4-0.34 0.8-0.09 1.7-0.14v-0.16q0-0.36-0.1-0.6-0.2-0.24-0.4-0.37t-0.5-0.18q-0.4-0.05-0.7-0.05-0.4 0-0.9 0.12-0.6 0.11-1.1 0.31h-0.06v-1.08q0.31-0.1 0.86-0.18 0.6-0.1 1.2-0.1 0.7 0 1.2 0.11t0.8 0.37q0.4 0.26 0.6 0.68 0.2 0.41 0.2 1.02zm-1.1-1.56v-1.76q-0.5 0-1.2 0.1-0.6 0-1 0.16-0.5 0.13-0.7 0.41-0.32 0.27-0.32 0.75 0 0.55 0.32 0.81 0.3 0.3 1 0.3 0.6 0 1-0.2 0.5-0.25 0.9-0.56z"/></svg>')
                                $svg_mcase=image.svg('<svg width="100" height="100" viewBox="0 0 16 16">
                                    <path fill="@image.color1" d="m8.84 12h-1.2l-0.82-2.35h-3.65l-0.83 2.35h-1.13l3.07-8.43h1.49zm-2.37-3.31-1.48-4.14-1.48 4.14z"/>
                                    <path fill="@image.color1" d="m14.9 12h-1v-0.7q-0.2 0.1-0.4 0.3t-0.5 0.3q-0.2 0.1-0.6 0.2-0.3 0.1-0.8 0.1-0.8 0-1.4-0.6-0.63-0.6-0.63-1.4 0-0.75 0.31-1.19 0.32-0.45 0.92-0.71 0.5-0.25 1.3-0.34 0.9-0.09 1.8-0.14v-0.16q0-0.36-0.1-0.6-0.2-0.24-0.4-0.38-0.2-0.13-0.5-0.17-0.4-0-0.7-0-0.4 0-0.9 0.12-0.6 0.1-1.1 0.31h-0.1v-1.13q0.3-0.1 0.9-0.18 0.6-0.11 1.2-0.11 0.7 0 1.2 0.12 0.5 0.11 0.8 0.37 0.4 0.26 0.6 0.67 0.1 0.42 0.1 1.03zm-1-1.6v-1.72q-0.5 0-1.2 0.1-0.6 0.1-1 0.16-0.5 0.13-0.7 0.41-0.3 0.27-0.3 0.76 0 0.5 0.3 0.8t1 0.3q0.6 0 1-0.2 0.5-0.3 0.9-0.6z"/></svg>')
                                $svg_ucase=image.svg('<svg width="100" height="100" viewBox="0 0 16 16">
                                    <path fill="@image.color1" d="m7.93 12.1h-1.19l-0.83-2.35h-3.64l-0.83 2.35h-1.138l3.068-8.43h1.49zm-2.36-3.31-1.48-4.14-1.48 4.14z"/>
                                    <path fill="@image.color1" d="m15.9 12.1h-1.2l-0.9-2.35h-3.6l-0.83 2.35h-1.14l3.07-8.43h1.5zm-2.4-3.31-1.5-4.14-1.5 4.14z"/></svg>')
                            //SVG
                        //LOGIC

                        item(title='Lowercase' image=svg_lcase
                            cmd=io.rename(sel.path, str.lower(sel.path)) invoke=1)

                        item(title='Uppercase' image=svg_ucase
                            cmd=io.rename(sel.path, str.upper(sel.path)) invoke=1)

                        item(title='Mixed-Case' image=svg_mcase
                            cmd=if(path.type(sel.path) == 3, io.rename(sel.path, str.capitalize(sel.path)),  io.rename(sel.path, str.capitalize(path.removeextension(sel.path)) + str.lower(sel.file.ext))) invoke=1)

                        separator()

                        //LOGIC
                            //SVG
                                $svg_dotsspaces=image.svg('<svg width="24" height="24" fill="none" viewBox="0 0 24 24">
                                    <path fill="@image.color1" d="M21 14v2c0 1.7-1.3 3-3 3H6c-1.7 0-3-1.3-3-3V14c0-.6.4-1 1-1s1 .4 1 1v2c0 .6.4 1 1 1H18c.6 0 1-.4 1-1V14c0-.6.4-1 1-1s1 .4 1 1Z" />
                                    <path fill="@image.color1" d="M8.75 1.5575 9.8075.5 17.75 8.4425V3.5H19.25V11h-7.5V9.5H16.6925L8.75 1.5575Z"/>
                                    <path fill="@image.color1" d="M5 7A2 2 90 103 5a2 2 90 002 2Zm0 2a4 4 90 114-4A4 4 90 015 9" /></svg>')
                                $svg_spacesdots=image.svg('<svg width="24" height="24" fill="none" viewBox="0 0 24 24">
                                    <path fill="@image.color1" d="M 1.5575 7.75 L 0.5 8.8075 L 8.4425 16.75 H 3.5 V 18.25 H 11 V 10.75 H 9.5 V 15.6925 L 1.5575 7.75 Z" />
                                    <path fill="@image.color1" d="M 19 1 c 0 -0.6 -0.4 -1 -1 -1 s -1 0.4 -1 1 v 2 c 0 0.6 -0.4 1 -1 1 H 4 c -0.6 0 -1 -0.4 -1 -1 v -2 c 0 -0.6 -0.4 -1 -1 -1 s -1 0.4 -1 1 v 2 c 0 1.7 1.3 3 3 3 h 12 c 1.7 0 3 -1.3 3 -3 V 1 z"/>
                                    <path fill="@image.color1" d="M 17 11 A 4 4 0 1 0 21 15 A 4 4 0 0 0 17 11" /></svg>')
                                $svg_underscoresspaces=image.svg('<svg width="24" height="24" fill="none" viewBox="0 0 24 24">
                                    <path fill="@image.color1" d="M21 14v2c0 1.7-1.3 3-3 3H6c-1.7 0-3-1.3-3-3V14c0-.6.4-1 1-1s1 .4 1 1v2c0 .6.4 1 1 1H18c.6 0 1-.4 1-1V14c0-.6.4-1 1-1s1 .4 1 1Z" />
                                    <path fill="@image.color1" d="M8.75 1.5575 9.8075.5 17.75 8.4425V3.5h1.5V11h-7.5V9.5h4.9425L8.75 1.5575Z"/>
                                    <path fill="@image.color1" d="M2 7h6v2H1V7z" /></svg>')
                                $svg_spacesunderscores=image.svg('<svg width="24" height="24" fill="none" viewBox="0 0 24 24">
                                    <path fill="@image.color1" d="M 1.5575 7.75 L 0.5 8.8075 L 8.4425 16.75 H 3.5 V 18.25 H 11 V 10.75 H 9.5 V 15.6925 L 1.5575 7.75 Z" />
                                    <path fill="@image.color1" d="M 19 1 c 0 -0.6 -0.4 -1 -1 -1 s -1 0.4 -1 1 v 2 c 0 0.6 -0.4 1 -1 1 H 4 c -0.6 0 -1 -0.4 -1 -1 v -2 c 0 -0.6 -0.4 -1 -1 -1 s -1 0.4 -1 1 v 2 c 0 1.7 1.3 3 3 3 h 12 c 1.7 0 3 -1.3 3 -3 V 1 z"/>
                                    <path fill="@image.color1" d="M 13 17 h 8 v 2 h -8 v -1.875 z" /></svg>')
                            //SVG
                        //LOGIC

                        item(title='Dots to Spaces' image=svg_dotsspaces
                            cmd=io.rename(sel.path, path.combine(path.location(sel.path), str.replace(path.title(sel.path), '.', ' ') + sel.file.ext)) invoke=1)

                        item(title='Spaces to Dots' image=svg_spacesdots
                            cmd=io.rename(sel.path, path.combine(path.location(sel.path), str.replace(path.title(sel.path), ' ', '.') + sel.file.ext)) invoke=1)

                        item(title='Underscores to Spaces' image=svg_underscoresspaces
                            cmd=io.rename(sel.path, path.combine(path.location(sel.path), str.replace(path.title(sel.path), '_', ' ') + sel.file.ext)) invoke=1)

                        item(title='Spaces to Underscores' image=svg_spacesunderscores
                            cmd=io.rename(sel.path, path.combine(path.location(sel.path), str.replace(path.title(sel.path), ' ', '_') + sel.file.ext)) invoke=1)

                    } //menu(title='Advanced rename')
                //ADVANCED RENAME

                separator()

                //PATH
                    menu(title='Path' image=\uE1E0)
                    {

                        //COPY NAME ONLY
                        item(title='Copy name only' image=\uE206 tip='Copy the name without the extension for the selected item to the clipboard'
                            window='hidden' cmd-ps=`-Command @sel(2, ',') | % { [System.IO.Path]::GetFileNameWithoutExtension($_) } | Set-Clipboard`)

                        //COPY NAME WITH EXTENSION
                        item(title='Copy name with extension' image=\uE206 tip='Copy the full name with the extension for the selected item to the clipboard'
                            window='hidden' cmd-ps=`-Command @sel(2, ',') | % { [System.IO.Path]::GetFileName($_) } | Set-Clipboard`)

                        separator()

                        //COPY FULL PATH
                        item(title='Copy full path' image=\uE17F tip='Copy the full path of the selected item to the clipboard'
                            window='hidden' cmd-ps=`-Command @sel(2, ',') | % { [System.IO.Path]::GetFullPath($_) } | Set-Clipboard`)

                        //COPY PARENT PATH
                        item(title='Copy parent path' image=\uE17F where=!path.isdrive(sel) tip='Copy the full path of the parent directory for the selected item to the clipboard'
                            window='hidden' cmd-ps=`-Command @sel(2, ',') | % { [System.IO.Path]::GetDirectoryName($_) } | Set-Clipboard`)

                        separator()

                    } //menu(title='Path')
                //PATH

                separator()

                //SECURITY
                    menu(title='Security' image=\uE25F)
                    {

                        //ATTRIBUTES
                            menu(title='Attributes' image=\uE143)
                            {

                                //LOGIC
                                $atrr = io.attributes(sel.path)
                                //LOGIC

                                //HIDE
                                item(title='Hide' image=\uE12D checked=io.attribute.hidden(atrr)
                                    cmd args='/c ATTRIB @if(io.attribute.hidden(atrr),"-","+")H "@sel.path"' window=hidden)

                                //READ-ONLY
                                item(title='Read-Only' image=\uE12E checked=io.attribute.readonly(atrr)
                                    cmd args='/c ATTRIB @if(io.attribute.readonly(atrr),"-","+")R "@sel.path"' window=hidden)

                            } //menu(title='Attributes')
                        //ATTRIBUTES

                        separator()

                        //MICROSOFT DEFENDER
                            menu(title='Microsoft Defender' image=\uE1B5)
                            {

                                //SCAN
                                item(title='Scan' image=\uE09E
                                    cmd-ps=`Start-MpScan -ScanType QuickScan` window='minimized')
                                // $reg_wd_exclusions = 'HKLM\SOFTWARE\Microsoft\Windows Defender\Exclusions' // can't be read

                                //ADD EXCLUSION
                                item(title='Add exclusion' image=\uE183
                                    admin cmd-ps=`$Path = Get-Item -LiteralPath '@sel(true)'; $Exclusions=(Get-MpPreference).ExclusionPath; if ($Exclusions -contains $Path) { Read-Host -Prompt 'Path exists. Press [Enter] to remove'; Remove-MpPreference -ExclusionPath $Path; Write-Host "Removed $Path"; } else { Read-Host -Prompt 'Path not found. Press [Enter] to add'; Add-MpPreference -ExclusionPath $Path; Write-Host "Added $Path"; }`)

                            } //menu(title='Microsoft Defender')
                        //MICROSOFT DEFENDER

                        separator()

                        //FIREWALL
                            menu(title='Firewall' image=\uE1CF find='.exe|.cmd|.bat|.msi|.ps1|.vbs')
                            {

                                //LOGIC
                                    $name_allow='Allow @sel.name'
                                    $name_block='Block @sel.name'
                                //LOGIC

                                //ALLOW IN WINDOWS FIREWALL
                                item(title='Allow in Windows Firewall' image=\uE13C
                                    admin cmd-line='/c netsh advfirewall firewall add rule name="@name_allow" program=sel(true) dir=in action=allow && netsh advfirewall firewall add rule name="@name_allow" program=sel(true) dir=out action=allow' window='hidden')

                                //BLOCK IN WINDOWS FIREWALL
                                item(title='Block in Windows Firewall' image=\uE139
                                    admin cmd-line='/c netsh advfirewall firewall add rule name="@name_block" program=sel(true) dir=in action=block && netsh advfirewall firewall add rule name="@name_block" program=sel(true) dir=out action=block' window='hidden')


                                //REMOVE FROM WINDOWS FIREWALL
                                item(title='Remove From Windows Firewall' image = \uE171
                                    admin cmd-line='/k netsh advfirewall firewall delete rule name="@name_allow" & netsh advfirewall firewall delete rule name="@name_block"' window='hidden')

                                //CHECK THE RULE IN WINDOWS FIREWALL
                                item(title='Check the Rule in Windows Firewall' image=\uE132
                                    admin cmd-line='/k netsh advfirewall firewall show rule name="@name_allow" & netsh advfirewall firewall show rule name="@name_block" & pause & exit')

                                separator()

                                //OPEN WINDOWS FIREWALL
                                item(title='Open Windows Firewall' image=\uE0A4 where=path.exists('@sys.bin\wf.msc')
                                    cmd='wf.msc')

                            } //menu(title='Firewall')
                        //FIREWALL

                        separator()

                        //PERMISSIONS
                            menu(title='Permissions' image=\uE195)
                            {

                                //LOGIC
                                    $icacls_switch = if(sel.type!=1, ' /t') + ' /c /l /q'
                                    $takeown_switch = if(sel.type!=1, '/r /d y')
                                //LOGIC

                                //RESTORE OWNERSHIP
                                item(title='Restore ownership' image=\uE194
                                    tip='Takes ownership without changing permissions@"\n"Use when you only need to become the owner'
                                    admin cmd-line='/k echo Taking ownership of "@sel.name"... & takeown /f @sel.path(true) @takeown_switch & echo ✓ Ownership transferred! & pause & exit')

                                //RESTORE OWNERSHIP AND ADMIN CONTROL
                                item(title='Restore ownership and admin control' image=\uE193
                                    tip='Takes ownership and grants full control to Administrators group'
                                        admin cmd-line='/k echo Taking ownership of "@sel.name"... && takeown /f @sel(true) @takeown_switch && echo Granting permissions... && icacls @sel(true) /grant *S-1-5-32-544:F @icacls_switch && pause && exit')

                                //RESTORE OWNERSHIP, ADMIN CONTROL AND INHERITANCE
                                item(title='Restore ownership, admin control and inheritance' image=\uE192
                                    tip='Takes ownership, then grants admin access and enables inheritance'
                                    admin cmd-line='/k echo [1/3] Taking ownership of "@sel.name"... & takeown /f @sel.path(true) @takeown_switch & echo [2/3] Granting admin permissions... & icacls @sel.path(true) /grant *S-1-5-32-544:F @icacls_switch & echo [3/3] Enabling inheritance... & icacls @sel.path(true) /inheritance:e & echo ✓ All fixes completed successfully! & pause & exit')

                                separator()

                                //RESET TO WINDOWS DEFAULTS
                                item(title='Reset to Windows defaults' image=\uE12A tip='Removes all custom permissions and restores Windows defaults'
                                    admin cmd-line='/k echo Resetting "@sel.name" to Windows defaults... & icacls @sel.path(true) /reset @icacls_switch & echo ✓ Reset to defaults completed! & pause & exit')

                                //COMPLETE PERMISSION REPAIR
                                item(title='Complete permission repair' image=\uE0F8 tip='Fixes common permission problems'
                                    admin cmd-line='/k echo COMPLETE PERMISSION REPAIR for "@sel.name" & echo ====================================== & echo Step 1: Taking ownership... & takeown /f @sel.path(true) @takeown_switch & echo Step 2: Granting full access... & icacls @sel.path(true) /grant *S-1-5-32-544:F @icacls_switch & echo Step 3: Enabling inheritance... & icacls @sel.path(true) /inheritance:e & echo Step 4: Resetting to defaults... & icacls @sel.path(true) /reset @icacls_switch & echo ✓ COMPLETE REPAIR FINISHED! & pause & exit')

                                //EMERGENCY ACCESS RESTORE
                                item(title='Emergency access restore' image=\uE130 tip='Grants access when otherwise locked out'
                                    admin cmd-line='/k echo EMERGENCY ACCESS RESTORE & echo This will give you full control! & pause & takeown /f @sel.path(true) @takeown_switch & icacls @sel.path(true) /grant "%USERNAME%:F" @icacls_switch & icacls @sel.path(true) /grant *S-1-5-32-544:F @icacls_switch & echo ✓ Emergency access granted! & pause & exit')

                            } //menu(title='Permissions')
                        //PERMISSIONS

                    } //menu(title='Security')
                //SECURITY

                separator()

                //LOGIC
                $flag_is_lm = key.shift()
                $flag = null
                $flags_m_reg = 'HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers'
                $flags_u_reg = 'HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers'
                $flags_m_str = null
                $flags_u_str = null
                $flag_file_path = if(sel.file.ext=='.lnk', sel.lnktarget, sel.path)
                //LOGIC

                menu(title={ flags_m_str=reg.get(flags_m_reg, flag_file_path) flags_u_str=reg.get(flags_u_reg, flag_file_path) } + 'Compatibility' image=\uE1C8
                    mode='single' where=reg.exists('HKCR\@reg('HKCR\@path.file.ext(flag_file_path)')\shellex\ContextMenuHandlers\Compatibility') )
                    {

                        //LOGIC
                        $flagging = {
                            // get from registry
                            flags_reg = if(flag_is_lm, flags_m_str, flags_u_str)
                            flags_arr = str.split(flags_reg, ' ')
                            // set to registry
                            flags_new = ''
                            flag_last = ''
                            flag_test = flag
                            // loop
                            for(i=0, i<len(flags_arr))
                            {
                                flag_curr = flags_arr[i]
                                // ignore and fix
                                if(flag_curr=='~', continue)
                                if(flag_curr=='DPIUNAWARE' and str.contains(flags_reg, 'GDIDPISCALING'), continue)
                                if(flag_curr=='GDIDPISCALING', flag_curr='GDIDPISCALING DPIUNAWARE')
                                // remove
                                $combination = '256COLOR|16BITCOLOR'
                                if(str.contains(combination, flag_curr) and str.contains(combination, flag_test), continue)
                                $combination = 'RUNASINVOKER|ELEVATECREATEPROCESS|RUNASADMIN'
                                if(str.contains(combination, flag_curr) and str.contains(combination, flag_test), continue)
                                $combination = 'PERPROCESSSYSTEMDPIFORCEOFF|PERPROCESSSYSTEMDPIFORCEON'
                                if(str.contains(combination, flag_curr) and str.contains(combination, flag_test), continue)
                                $combination = 'HIGHDPIAWARE|DPIUNAWARE|GDIDPISCALING DPIUNAWARE'
                                if(str.contains(combination, flag_curr) and str.contains(combination, flag_test), continue)
                                $combination = 'WIN95|WIN4SP5|WIN98|WIN2000|WINXPSP2|WINXPSP3|WINSRV03SP1|VISTARTM|VISTASP1|VISTASP2|WINSRV08SP1|WIN7RTM|WIN8RTM'
                                if(str.contains(combination, flag_curr) and not(str.contains(combination, flag_test)), flag_last=' '+flag_curr)
                                if(str.contains(combination, flag_curr) and str.contains(combination, flag_test), continue)	
                                if(flag_test!=flag_curr, { flags_new+=' '+flag_curr })
                            }
                            // add new
                            if(!str.contains(flags_reg, flag_test), { flags_new+=' '+flag_test })
                            // reoerder and combine
                            flags_new = '~'+str.replace(flags_new, flag_last, '')+flag_last
                            // set new
                            if(flag_is_lm, { flags_m_str = flags_new }, { flags_u_str = flags_new })
                        }
                        $flag_cmd = if(flag_is_lm, if(len(flags_m_str)>2, `reg add "@flags_m_reg" /v "@flag_file_path" /t REG_SZ /d "@flags_m_str" /f`, `reg delete "@flags_m_reg" /v "@flag_file_path" /f`), if(len(flags_u_str)>2, `reg add "@flags_u_reg" /v "@flag_file_path" /t REG_SZ /d "@flags_u_str" /f`, `reg delete "@flags_u_reg" /v "@flag_file_path" /f`))
                        //LOGIC

                        separator()

                        menu(title='Run conditions' image=\uE0FE)
                        {

                            item(title='Run as Administrator' image=\uE100
                                admin=flag_is_lm cmd-line='/c @{ flag='RUNASADMIN' flagging } @flag_cmd' window='hidden')

                            item(title='Run as Standard User' image=\uE105 where=sys.ver.build>=6000
                                admin=flag_is_lm cmd-line='/c @{ flag='RUNASINVOKER' flagging } @flag_cmd' window='hidden')

                        } //menu(title='Run conditions')

                        menu(title='Graphics Settings' image=\uE260)
                        {

                            item(title='Disable Fullscreen Optimizations' image=\uE0A0
                                admin=flag_is_lm cmd-line='/c @{ flag='DISABLEDXMAXIMIZEDWINDOWEDMODE' flagging } @flag_cmd' window='hidden')

                        } //menu(title='Graphics Settings')

                        menu(title='DPI Settings' image=\uE184)
                        {

                            item(title='Override program scaling with DPI from login' image=\uE176
                                admin=flag_is_lm cmd-line='/c @{ flag='PERPROCESSSYSTEMDPIFORCEOFF' flagging } @flag_cmd' window='hidden')

                            item(title='Override program scaling with DPI from runtime' image=\uE174
                                admin=flag_is_lm cmd-line='/c @{ flag='PERPROCESSSYSTEMDPIFORCEON' flagging } @flag_cmd' window='hidden')

                            separator()

                            item(title='Application-managed scaling' image=\uE0D9
                                admin=flag_is_lm cmd-line='/c @{ flag='HIGHDPIAWARE' flagging } @flag_cmd' window='hidden')

                            item(title='Windows legacy Scaling' image=\uE0E1
                                admin=flag_is_lm cmd-line='/c @{ flag='DPIUNAWARE' flagging } @flag_cmd' window='hidden')
                                
                            item(title='Enhanced Windows legacy scaling' image=\uE0E1
                                admin=flag_is_lm cmd-line='/c @{ flag='GDIDPISCALING DPIUNAWARE' flagging } @flag_cmd' window='hidden')

                        } //menu(title='DPI Settings')

                    }

                separator()

                //METADATA
                menu(title='Metadata' image=\uE26D)
                {

                    item(title='Tag @"\t"Value' visibility='label')

                    //item(title="Name" type='file' keys=io.meta(sel, 'System.ItemNameDisplay') visibility='label')

                    item(title="Type" type='file' keys=io.meta(sel, 'System.ItemType') visibility='label')

                    item(title="Size" type='file' keys=io.meta(sel, 'System.Size') visibility='label')

                    //item(title="Path" type='file' keys=io.meta(sel, 'System.ItemFolderPathDisplay') visibility='label')

                    item(title="Owner" type='file' keys=io.meta(sel, 'System.FileOwner') visibility='label')

                    item(title="Date created" type='file' keys=io.meta(sel, 'System.DateCreated') visibility='label')

                    item(title="Date modified" type='file' keys=io.meta(sel, 'System.DateModified') visibility='label')

                    item(title="Date accessed" type='file' keys=io.meta(sel, 'System.DateAccessed') visibility='label')

                    item(title="Dimensions" find='.jpg|.jpeg|.png|.bmp|.webp' keys=io.meta(sel, 'System.Image.Dimensions') visibility='label')

                    item(title="Resolution" find='.mkv|.mp4|.avi|.webm' keys=io.meta(sel, 'System.Video.FrameHeight') visibility='label')

                    item(title="Duration" find='.mp3|.flac|.wav|.mkv|.mp4|.avi|.webm' keys=io.meta(sel, 'System.Media.Duration') visibility='label')

                    item(title="Artist" find='.mp3|.flac|.wav' keys=io.meta(sel, 'System.Music.AlbumArtist') visibility='label')

                    item(title="Album" find='.mp3|.flac|.wav' keys=io.meta(sel, 'System.Music.AlbumTitle') visibility='label')

                    item(title="Bitrate" find='.mp3|.flac|.wav' keys=io.meta(sel, 'System.Audio.EncodingBitrate') visibility='label')

                    item(title="Sample Rate" find='.mp3|.flac|.wav' keys=io.meta(sel, 'System.Audio.SampleRate') visibility='label')

                    item(title="Sample Size" find='.mp3|.flac|.wav' keys=io.meta(sel, 'System.Audio.SampleSize') visibility='label')

                } //menu(title='Metadata')
                //METADATA

            } //menu(title='More options')
        //MORE OPTIONS

    } //menu(title='Plugins')

//PLUGINS