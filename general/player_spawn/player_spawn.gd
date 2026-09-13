@icon("res://general/icons/player_spawn.svg")
class_name PlayerSpawn extends Node2D



func _ready() -> void:
	visible = false
	await get_tree().process_frame
	
	# Check to see if we already have a player
	if get_tree().get_first_node_in_group("Player"):
		# We have a player
		return
	# Instantiate a new instance of our player scene
	var player : Player = load("res://player/player.tscn").instantiate()
	get_tree().root.add_child(player)
	# Position the player scene
	player.global_position = self.global_position
	
	pass
