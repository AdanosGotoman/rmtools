macroScript toggle category:"Extended Saving" tooltip:"Ignore Me"
(
	on execute do
	(
		global _extendedSavingEnabled
		try ( _extendedSavingEnabled = not _extendedSavingEnabled ) catch ( _extendedSavingEnabled = true )
	)
	on isVisible do
	(
		local menuItem = ( ( menuMan.findMenu "Extended Saving" ).getItem 1 )
		global _extendedSavingEnabled
		if _extendedSavingEnabled == true then menuItem.setTitle "Current Scene: Enabled"
		else menuItem.setTitle "Current Scene: Disabled"
		return true	
	)
) 