extends Node2D



func _on_Button_button_up(botao):
	if botao == 'botao1':
		get_tree().change_scene("res://Dia2_Pratica1.tscn")
	else:
		get_tree().change_scene("res://Dia2_Pratica2.tscn")
