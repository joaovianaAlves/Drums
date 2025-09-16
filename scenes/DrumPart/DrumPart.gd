extends Node3D

@onready var audio_stream_player_3d: AudioStreamPlayer3D = $AudioStreamPlayer3D
@export var on_hit_sound: AudioStream

func _on_area_3d_area_entered(area: Area3D) -> void:
	if area.is_in_group("Drumstick"):
		var drumstick: Drumstick = area.owner
		if drumstick.velocity_direction.y > 0:
			return
		audio_stream_player_3d.stop()
		audio_stream_player_3d.stream = on_hit_sound
		audio_stream_player_3d.play()
		
