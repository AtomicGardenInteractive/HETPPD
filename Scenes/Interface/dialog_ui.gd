extends Control

var settimer : float = 6
var timer : float = 0


func _process(delta):
	if timer <= 0 &&  get_parent().visible == true:
		closedialog()
	if timer >= -1:
		timer -= delta
		$Panel/Label.visible_ratio += delta

func newdialog(lines: String):
	settext(lines)
	get_parent().visible = true
	timer = settimer
	$Panel/Label.visible_ratio = 0

func settext(lines: String):
	$Panel/Label.set_text(lines)

func closedialog():
	get_parent().visible = false
