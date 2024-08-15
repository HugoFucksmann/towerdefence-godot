extends CharacterBody2D

#EL TEXTO GRIS ESTE NO HACE NADA, SON ANOTACIONES

func _ready(): #SE ACTIVA AL INICIO DE LA ESCENA
	$Animaciones.play("temblar") #REPRODUCE LA ANIMACIÓN LLAMADA "miraqueguay"

func _physics_process(delta): #SE ACTIVA AL PASAR CADA FRAME FÍSICO (Todo el rato)
	var direccion = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	#^^^^^ PILLA LA DIRECCIÓN USANDO LAS FLECHITAS COMO INPUT ^^^^^
	velocity = direccion * 200 #MULTIPLICA LA DIRECCIÓN (var = direccion) POR LA VELOCIDAD (200)
	move_and_slide() #SE ENCARGA DE QUE LAS MOVIDAS FUNCIONEN FINO FINO
