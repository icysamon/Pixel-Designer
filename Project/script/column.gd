extends GridContainer

var Grid = preload("res://tscn/button.tscn")
@onready var text_edit = $"../TextEdit"


func _ready():
	for i in 8:
		var grid = Grid.instantiate()
		add_child(grid)
		
	text_edit.text = "0"


func _run():
	var byte : int = 0x00
	for i in get_child_count():
		if get_child(i).switch:
			byte = byte | (0x01 << i) # 毎列のピクセル対応のを計算
	text_edit.text = "%x" % byte
