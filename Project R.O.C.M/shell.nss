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
	import 'imports/themes/default_theme.nss'
	//import 'imports/themes/bhf_theme.nss'
	import 'imports/themes/images.nss'
//APPEARANCE

//

//CORE
	import 'imports/types/desktop_bg.nss'
	import 'imports/types/desktop.nss'
	import 'imports/types/taskbar.nss'
	//import 'imports/types/advanced_taskbar.nss'
	import 'imports/types/scrollbar.nss'
	import 'imports/types/back.nss'
	import 'imports/types/namespace.nss'
	import 'imports/types/drive.nss'
	import 'imports/types/dir.nss'
	import 'imports/types/file.nss'
	import 'imports/types/filetypes/shortcut.nss'
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

//MODIFIERS