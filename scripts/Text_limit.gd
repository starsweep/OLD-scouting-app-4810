extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func text_changed():
	if $Tnum.get_text().length() > 5:
		#Disable Typing
		$Tnum.readonly = true
