@tool
class_name TestNode extends Node

signal test_signaled

enum TestEnum {
	CASE_ONE,
	CASE_TWO,
}

const TEST_CONSTANT := Color()  # Constructor / Inline comment.

@export var test_export_var := 0

var test_var_node := $Child/Child

@onready var test_onready_var

static var test_static_var: Vector2i


func _ready() -> void:
	test_function("Hello world!")

	var number := TestNode.test_function(
		"This is a test string.\n \" \' This will be in the string."
	)

	var format_string := "%i" % 10
	TestClass.test_class_member = format_string

	var multiline_string := """
This is a multiline string.
It can be multiple lines long.
"""
	%UniqueNameNode.text = multiline_string


func test_function(msg: String) -> int:
	print(msg)
	return randi()
