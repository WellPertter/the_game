extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if (Input.is_action_just_pressed("ui_accept") or Input.is_action_just_pressed("ui_up")) and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
		
		if is_on_floor():
			$Image.animation = "walking"
		else:
			$Image.animation = "jump"
		
		if direction > 0:
			$Image.flip_h = false
		else:
			$Image.flip_h = true
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
		if is_on_floor():
			$Image.animation = "idle"
		else:
			$Image.animation = "jump"

	move_and_slide()
