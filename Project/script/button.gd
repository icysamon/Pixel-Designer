extends Button

var switch = false

func _on_pressed():
	switch = !switch
	get_parent()._run()
