//SETTINGS
	settings
	{
		priority=1
		exclude.where = !process.is_explorer
		showdelay = 100
		tip.enabled = true
		modify.remove.duplicate = 1
		modify.remove.separator = 1
	}
//SETTINGS


//


//APPEARANCE
	import 'imports/themes/theme.nss'
	import 'imports/themes/images.nss'
//APPEARANCE


//


//CORE
	import 'imports/types/desktop_bg.nss'
	import 'imports/types/desktop_np.nss'
	import 'imports/types/taskbar.nss'
	import 'imports/types/scrollbar.nss'
	import 'imports/types/back.nss'
	import 'imports/types/namespace.nss'
	import 'imports/types/drive.nss'
	import 'imports/types/dir.nss'
	import 'imports/types/file.nss'
//CORE


//


//MODIFIERS

	//HIDE LIST
	modify(type='*' where=str.equals(this.name, ["add a network location", "add to favourites", "always available offline", "bottom", "burn disc image", "cascade windows", "cast to device", "copy as path", "customise this folder", "defenderui add exclusion", "disconnect network drive", "display settings", "edit", "expand", "extract all", "give access to", "group by", "include in library", "install for all users", "manage", "map network drive", "new", "new folder with selection", "open as portable device", "open autoplay", "open in new process", "open in terminal", "open powershell window here", "open with", "open with vscodium", "page up", "page down", "paste shortcut", "personalise", "pin to quick access", "pin to start", "pin to taskbar", "preview", "print", "refresh", "repair", "restore previous versions", "rotate right", "rotate left", "run as different user", "scan with microsoft defender", "scroll down", "scroll here", "scroll up", "send to", "send with quick share", "set as desktop background", "share", "show the desktop", "show windows side by side", "show windows stacked", "sort by", "take ownership", "teracopy", "top", "troubleshoot compatibility", "turn bitlocker on", "undo", "undo delete", "undo rename", "uninstall", "view", "view in 7-zip"]) visibility='hidden')
	//HIDE LIST


//


	//SPECIAL ACTIONS
		//PASTE ENTRY HIDING ON EMPTY CLIPBOARD
			remove(where=this.id==id.paste and this.disabled)
		//PASTE ENTRY HIDING ON EMPTY CLIPBOARD
	//SPECIAL ACTIONS

	//

	//RESISTANCE IS FUTILE

		//FORMAT
			modify(title='Format' image=\uE231 /*https://nilesoft.org/glyphs/e231*/ tip='Format the currently selected item' type='*' where=str.equals(this.name, ["format"]) separator='both' position=indexof('cut|rename', 0))
		//FORMAT

		//OPEN ORIGINAL LOCATION
			modify(title='Open original location' image=\uE0D5 /*https://nilesoft.org/glyphs/e0d5*/ tip='Open the true location of the currently selected item/s' type='*' where=str.equals(this.name, ["open file location", "open folder location"]) separator='both' position=0)
		//OPEN ORIGINAL LOCATION

		//POWERTOYS
			//NEW+ MENU
				modify(title='New' image=\uE283 /*https://nilesoft.org/glyphs/e283*/ tip='A menu for creating new empty items from user createable templates' type='*' where=str.equals(this.name, ["new+"]) separator='both')
			//NEW+ MENU

			//"NEW FOLDER" ENTRY IN "NEW+" MENU
				modify(title='New folder' image=\uE0E5 /*https://nilesoft.org/glyphs/e0e5*/ tip='Create a new empty folder at the currently selected location' keys='Ctrl+Shift+N' type='*' where=str.equals(this.name, ["new folder"]) in=str.replace("new+", '&', '') separator='both')
			//"NEW FOLDER" ENTRY IN "NEW+" MENU

			//"OPEN TEMPLATES FOLDER" ENTRY IN "NEW+" MENU
				modify(title='Open templates folder' image=\uE0E8 /*https://nilesoft.org/glyphs/e0e8*/ tip='Open templates folder location in File Explorer' + "\n\n" + 'Place templates (example files) in this folder with the types of files you wish to be able to create and they will show in the New menu entry of the context menu' type='*' where=str.equals(this.name, ["open templates"]) in=str.replace("new+", '&', '') separator='both')
			//"NEW FOLDER" ENTRY IN "NEW+" MENU
		//POWERTOYS

	//RESISTANCE IS FUTILE

//MODIFIERS