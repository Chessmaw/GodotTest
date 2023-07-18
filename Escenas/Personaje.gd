#Cuerpo del Personaje
extends KinematicBody2D


#Velocidad del Jugador
export (float) var Velocidad = 200
#Indentificacion del Personaje
var VelocidadDelCuerpo = Vector2()
#Funcion de entrada de Teclas
func EntradadeTeclas():
	var VelocidadDelCuerpo = Vector2()
	
	if Input.is_action_pressed("ui_right"):
		VelocidadDelCuerpo.x += 1
	if Input.is_action_pressed("ui_left"):
		VelocidadDelCuerpo.x -= 1
	if Input.is_action_pressed("ui_down"):
		VelocidadDelCuerpo.y += 1
	if Input.is_action_pressed("ui_up"):
		VelocidadDelCuerpo.y -= 1
	VelocidadDelCuerpo = VelocidadDelCuerpo.normalized() * Velocidad
	
func _physics_process(delta):
	EntradadeTeclas()
	VelocidadDelCuerpo = move_and_slide(VelocidadDelCuerpo)
