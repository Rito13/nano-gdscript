@tool
extends Node
class_name TestNode

signal test_signaled
enum TestEnum
const TEST_CONSTANT
@export var test_export_var := 0
static var test_static_var: Vector2i
var test_var_node := $Child/Child
@onready test_onready_var


func _ready() -> void:
	test_function('Hello world!')
	TestNode.test_function("This is a test string.\n \" \' This will be in the string.")
	var format_string := "%i" % 10
	var multiline_string := """
This is a multiline string.
It can be multiple lines long.
"""
	TestClass.test_class_member += 1.0
	%UniqueNameNode

func test_function(msg: String) -> void:
	print(msg)
