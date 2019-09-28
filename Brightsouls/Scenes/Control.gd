extends Control
onready var timer = get_node('Timer')
var seconds = 30
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.set_wait_time(1)
	timer.start()
	
	pass # Replace with function body.
	
func _on_Timer_timeout():
	seconds-=1
	get_node("Label").visible = true
	if seconds < 28:
		get_node("Label").visible = true
	if seconds < 25:
		get_node("Label2").visible = true
	if seconds < 20:
		get_node("Label3").visible = true
	if seconds < 15:
		get_node("Label4").visible = true
	if seconds < 10:
		get_node("Label5").visible = true 
	if seconds < 5:
		get_node("Label6").visible = true
	if seconds < 0:
		get_node("Button").visible = true
	print(seconds)