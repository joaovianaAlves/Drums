extends Node3D


func _on_area_3d_area_entered(area: Area3D) -> void:
	if not area.is_in_group("Drumstick"):
		return
	
	print("PLAY")
