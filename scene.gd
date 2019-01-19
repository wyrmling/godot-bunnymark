#extends Area2D
#extends PackedScene
extends Node

var count = 0

func _input(event):
    # Mouse in viewport coordinates
    if event is InputEventMouseButton:
        print("Mouse Click/Unclick at: ", event.position)
        for i in range(500):
            var scene = preload("res://bunny.tscn")
            var bunny = scene.instance()
            add_child(bunny)
            var x = randi() % 640
            var y = randi() % 30 + 50
            bunny.position = Vector2(x, y)
            bunny.velocity = - randi() % 200

        count += 500
        print(count)

#    elif event is InputEventMouseMotion:
#        print("Mouse Motion at: ", event.position)

    # Print the size of the viewport
#    print("Viewport Resolution is: ", get_viewport_rect().size)

#func _process(delta):
    #print('step')