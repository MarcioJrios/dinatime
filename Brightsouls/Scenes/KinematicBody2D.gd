extends KinematicBody2D

export (int) var speed = 200
export (int) var gravidade = 200
var velocity = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func get_input():
    velocity = Vector2()
    gravidade -= 1
    if Input.is_action_pressed('ui_right'):
        velocity.x += 1
    if Input.is_action_pressed('ui_left'):
        velocity.x -= 1
    velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity.y +=1000
	velocity = move_and_slide(velocity)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
