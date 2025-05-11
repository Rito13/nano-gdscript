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

var test_var_node := $Child/Child  ## Inline docstring.

@onready var test_onready_var

static var test_static_var: Vector2i

# var commented_string_test = "I like \n carrots"
# var commented_multiline_string_test = '''
# First line of text
# BBCode [color=green]test[/color]
# '''

@export_range(12,23) var test_float = 18.13_200_001
@export_flags("A","B","C","D") var bits = 0b1001
@export var purple_float = 0xAA00ff

func _ready() -> void:
        test_function("Hello world!")

        var number := TestNode.test_function(
                "This is a test string.\n \" \' This will be highlighted as part of the string."
        )

        for i in range(len([1,2,3,4,5,6,7])):
                print_debug(i)

        match number:
                TestEnum.CASE_ONE when true:
                        continue
                _:
                        return

        var format_string := "time: %dh" % 10
        TestClass.test_class_member = format_string

        var multiline_string := """

This is a multiline string.
It can be multiple lines long.

These should be highlighted: \n \n \\\\
This shouldn't be highlighted: \

"""
        var multiline_string_2 = r'''
This is raw string
because it is prefixed with 'r'
highlighted: \r \n \a \f
not highlighted: \ \d \g
'''
        %UniqueNameNode.text = multiline_string

        var path := ^"../sibling/child"
# line ending with space 
# and with tab 		

func new_function(haha:=1.23) -> StringName:
        if haha == PI:
                return &"PI"
        elif haha == TAU:
                return &"TAU"
        var string_name := &"Named_Node"
        return string_name

func test_function(msg: String) -> int:
        print(msg)
        var out = randi()
        out += 13*2-16/4
        out = out % 2
        return out 
