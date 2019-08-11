extends Node

func _on_Sair_button_up():
	$GameOver.play()


func _on_GameOver_finished():
	get_tree().quit()


func _on_Iniciar_button_up():
	$Start.play()

func _on_Start_finished():
	get_tree().change_scene("res://Menu.tscn")
