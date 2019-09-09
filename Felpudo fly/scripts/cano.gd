extends Node2D

export var vel = -400

var cena

func _ready():
	cena = get_tree().get_current_scene()
	set_process(true)


func _physics_process(delta):
	if cena.estado == cena.JOGANDO:
		position.x += vel * delta
	
	if position.x < -100:
		queue_free()


func _on_Area2D_body_entered(body):
	if body.get_name() == "Felpudo":
		cena.kill()


func _on_ponto_body_entered(body):
	cena.pontuar()
