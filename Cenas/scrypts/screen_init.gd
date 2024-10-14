extends Node2D

func _on_btn_play_pressed() -> void:
	$btnPlay.mouse_filter = Control.MOUSE_FILTER_IGNORE 
	# Cria uma nova instância do Timer
	$lblName.modulate = Color(25 / 255.0, 132 / 255.0, 235 / 255.0) # blue
	$lblName2.modulate = Color(237 / 255.0, 235 / 255.0, 6 / 255.0) #yellow
	$btnPlay.modulate = Color(252 / 255.0, 170 / 255.0, 250 / 255.0) #pink
	
	await get_tree().create_timer(1).timeout
	
	$lblName.modulate = Color(252 / 255.0, 170 / 255.0, 250 / 255.0) #pink
	$lblName2.modulate = Color(25 / 255.0, 132 / 255.0, 235 / 255.0)   # blue
	$btnPlay.modulate = Color(237 / 255.0, 235 / 255.0, 6 / 255.0) #yellow
	await get_tree().create_timer(2).timeout
	
	$lblName.modulate = Color(237 / 255.0, 235 / 255.0, 6 / 255.0) #yellow
	$lblName2.modulate = Color(252 / 255.0, 170 / 255.0, 250 / 255.0) #pink
	$btnPlay.modulate = Color(25 / 255.0, 132 / 255.0, 235 / 255.0) # blue
	await get_tree().create_timer(2).timeout

	get_tree().change_scene_to_file("res://Cenas/screen_select_level.tscn")
	pass # Replace with function body.



# Deus seja louvado para todo o sempre!
