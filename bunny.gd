extends Node2D

export (int) var velocity

func _process(delta):
    velocity = velocity + 1200 * delta
    position.y = position.y + velocity * delta
    if position.y > 1000:
        position.y = 1000
        velocity = -velocity