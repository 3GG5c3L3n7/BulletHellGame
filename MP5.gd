extends Node2D

var mouse_position = get_global_mouse_position()
var shooting_position = get_global_position()# Global Location of MP5 w/ childs
var direction = mouse_position - shooting_position
var speed = 50
var delta = 0 # MAY NEED TO CHANGE TO 0!!!!!!!!!
var velocity = direction*speed
var movement = velocity * delta


onready var bullet = get_node('Bullet')
#var bullet_pos =  bullet.positon


func _physics_process(delta):
	self.look_at(get_global_mouse_position())



#	print(mouse_position)#0,0
#	print(shooting_position)#5,45, location of 
#	print(direction)




