@tool
class_name TestNode extends Node

## This is a docstring.

# This is a regular comment.
signal test_signaled

enum TestEnum {
	CASE_ONE,
	CASE_TWO,
	CASE_THREE,
}

const TEST_CONSTANT := Color()  # Constructor / Inline comment.

@export var test_export_var := 0

var test_var_node := $Child/Child

@onready var test_onready_var

static var test_static_var: Vector2i


func _ready() -> void:
	test_function("Hello world!")

	var number := TestNode.test_function(
		'This is a test string.\n \" This will be highlighted as part of the string.'
	)
	
	match number:
		TestEnum.CASE_ONE when true:
			continue
		_:
			return

	var format_string := "%i" % 10
	TestClass.test_class_member = format_string

	var multiline_string := """

This is a multiline string.
It can be multiple lines long.

These should be highlighted: \n \n \\\\
This shouldn't be highlighted: \

"""
	%UniqueNameNode.text = multiline_string


func test_function(msg: String) -> int:
	print(msg)
	return randi() % 2
