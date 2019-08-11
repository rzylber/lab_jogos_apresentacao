extends Node2D

signal previous_clicked
signal next_clicked

func _on_Anterior_button_up():
	emit_signal("previous_clicked")


func _on_Proximo_button_up():
	emit_signal("next_clicked")
