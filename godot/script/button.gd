extends Button

var switch = false # ボタンの状態

func _on_pressed():
	switch = !switch # ボタン状態を変更
	get_parent()._run()
