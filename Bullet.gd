extends KinematicBody2D
#func _ready()
var bullet_speed=10
var mouse_position = get_global_mouse_position()
var shooting_position = get_global_position()# Global Location of MP5 w/ childs
var direction = mouse_position - shooting_position
var delta = 0 # MAY NEED TO CHANGE TO 0!!!!!!!!!
var velocity = direction*bullet_speed
#onready var bullet = get_node("self")

func _input(event):

	if event.is_action_pressed("test_fire"):
#		self.position.move_toward(direction,delta*bullet_speed)
		self.add_child(self)
		print('gay')
#		self.velocity = move_and_slide(direction)
		self.velocity = -90



