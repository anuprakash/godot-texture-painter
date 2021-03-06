extends Node

# This is purely a container for Dialogs.
# It can be used to detect if there are any open dialogs at the moment.
func _ready():

	yield(get_tree(), "idle_frame")
	get_parent().move_child(self, get_parent().get_children().size()-1) # Little hack to ensure the Dialogs is the last singleton in the tree so it's drawn on top of everything else
		
func any_dialog_open():
	for c in get_children():
		if c.visible:
			return true
	return false