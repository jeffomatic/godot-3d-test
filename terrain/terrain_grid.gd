extends Spatial

export(PackedScene) var tile_scene
export var size: int


func _ready():
	var offset = -0.5 * float(size) + 0.5
	var base = Vector3(offset, 0, offset)

	for i in range(size):
		for j in range(size):
			var tile = tile_scene.instance()
			tile.translation = base + Vector3(i, 0, j)
			add_child(tile)
