class_name Drumstick
extends Node3D

@onready var drumstick_contact: Area3D = $DrumstickContact
var velocity_direction: Vector3
var old_position: Vector3
var velocity: float
var threshold_frames: int = 3
var frames_stopped: int = 0

func _physics_process(delta: float) -> void:
	if old_position == drumstick_contact.global_position and frames_stopped < threshold_frames:
		frames_stopped += 1
		return
		
	velocity_direction = (drumstick_contact.global_position - old_position).normalized()
	velocity = abs((drumstick_contact.global_position - old_position).length())
	old_position = drumstick_contact.global_position
