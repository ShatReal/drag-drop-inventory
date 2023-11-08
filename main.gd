extends Control


var items_to_load := [
	"res://resources/bow.tres",
	"res://resources/key.tres",
	"res://resources/potion.tres",
]


func _ready() -> void:
	for i in 88:
		var slot := InventorySlot.new()
		slot.init(ItemData.Type.MAIN, Vector2(64, 64))
		%Grid.add_child(slot)
	for i in items_to_load.size():
		var item := InventoryItem.new()
		item.init(load(items_to_load[i]))
		%Grid.get_child(i).add_child(item)
