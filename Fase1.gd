extends Node2D

var paginas = ["Pag1", "Pag2", "Pag3", "Pag4"]
var paginaAtual = 0

func _ready():
	get_tree().call_group("pages", "hide")
	get_node("MainContainer/Paginas/Pag3/IndieGameMovie").hide()
	$"MainContainer/Paginas/Pag2/Dancer".play("dancing")
	
func _on_Node2D_next_clicked():
	if paginaAtual < paginas.size()-1:
		escondePagina()
		paginaAtual+=1
		mostraPagina()

func _on_Node2D_previous_clicked():
	if paginaAtual > 0:
		escondePagina()
		paginaAtual-=1
		mostraPagina()
		
func mostraPagina():
	# print_debug("Mostra:" + paginas[paginaAtual])
	var node = get_node("MainContainer/Paginas/" + paginas[paginaAtual])
	if node != null:
		node.show()
	
func escondePagina():
	# print_debug("Esconde:" + paginas[paginaAtual])
	var node = get_node("MainContainer/Paginas/" + paginas[paginaAtual])
	if node != null:
		node.hide()

func _on_Timer_timeout():	
	mostraPagina()
	get_node("MainContainer/ControlesContainer").show()

func _on_Button_button_up():
	OS.shell_open("https://mashable.com/2015/01/08/gaming-tech-ces/")


func _on_Button2_button_up():
	get_node("MainContainer/Paginas/Pag3/IndieGameMovie").show()


func _on_Itchio_button_up():
	OS.shell_open("https://itch.io/")


func _on_PaperPlease_button_up():
	OS.shell_open("https://youtu.be/_QP5X6fcukM")


func _on_Showcase1_button_up():
	OS.shell_open("https://godotengine.org/showcase")


func _on_Showcase2_button_up():
	OS.shell_open("https://www.youtube.com/watch?v=UTAeDoRIHaA")


func _on_Showcase3_button_up():
	OS.shell_open("https://www.youtube.com/watch?v=NlKEO1N8wMM")


func _on_Showcase4_button_up():
	OS.shell_open("https://www.youtube.com/watch?v=JF60CfSLjew")


func _on_Download_button_up():
	OS.shell_open("https://godotengine.org/download")


func _on_Docs_button_up():
	OS.shell_open("https://docs.godotengine.org/en/3.1/index.html")


func _on_Exemplos_button_up():
	OS.shell_open("https://github.com/godotengine/godot-demo-projects")
