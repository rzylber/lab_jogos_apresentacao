extends Node2D

var times = ["Corinthians", "Flamengo", "XV de Piracicaba"]

func _ready():
	# variaveisOperadoresLiterais()
	# condicionais()
	loops()
	pass

func variaveisOperadoresLiterais():
	var valor1 = 1
	var valor2 = 2 + 2
	var valor3 = valor1 + valor2
	print(valor3)

func condicionais():
	var senha = "ALOHA"
	if senha == "ALOHA":
		print("Senha ok")
	else:
		print("Senha errada")

func loops():
	"""
	for i in range(5): #https://docs.godotengine.org/en/3.1/classes/class_@gdscript.html#class-gdscript-method-range
		print("Repete " + String(i))
	for x in ["Que", "coisa", "mais", "legal"]:
		print(x)
	for c in "CADA LETRA":
		print(c)
	"""
	var maximo = 5
	var atual = 0
	while atual <= maximo:
		print(atual)
		atual += 1

func _on_Button_button_up():
	print("Sinal Recebido")


func _on_Button2_button_up():
	# print($Escolha.selected)
	print(times[$Escolha.selected])
	$Label.text = times[$Escolha.selected]