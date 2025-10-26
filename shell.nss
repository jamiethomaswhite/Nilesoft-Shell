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

//LOCALISATION
$loc_path='imports\lang\'
import lang loc_path + "en.nss"
import lang if(path.exists(loc_path + sys.lang + ".nss"),
               loc_path + sys.lang + ".nss",
               loc_path + "en.nss")
//LOCALISATION


//

//APPEARANCE
import 'imports/theme.nss'
import 'imports/images.nss'
//APPEARANCE

//

//CORE
import 'imports/types/desktop.nss'
import 'imports/types/taskbar.nss'
import 'imports/types/scrollbar.nss'
import 'imports/types/back.nss'
import 'imports/types/namespace.nss'
import 'imports/types/drive.nss'
import 'imports/types/dir.nss'
import 'imports/types/file.nss'
//CORE