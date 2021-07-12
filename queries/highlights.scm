"and" @keyword
"as" @keyword
;"async" @keyword
;"await" @keyword
"break" @keyword
"const" @keyword
"continue" @keyword
"elif" @keyword
"else" @keyword
"enum" @keyword
"false" @keyword
"for" @keyword
"func" @keyword
"if" @keyword
"impl" @keyword
"in" @keyword
; "!in" @keyword
; "infix" @keyword
; "init" @keyword
"loop" @keyword
"match" @keyword
"mod" @keyword
; "move" @keyword
"mut" @keyword
"return" @keyword
"or" @keyword
"party" @keyword
; "pri" @keyword
; "pub" @keyword
"ref" @keyword
"self" @keyword
; "static" @keyword
"struct" @keyword
"super" @keyword
; "this" @keyword
"trait" @keyword
"true" @keyword
"type" @keyword
; "union" @keyword
; "unsafe" @keyword
; "use" @keyword
"let" @keyword
; "where" @keyword
"while" @keyword
; "yield" @keyword

; Literals
(bool_lit) @constant.builtin
(int_lit) @constant.builtin
(float_lit) @constant.builtin

(char_lit) @string
(string_lit) @string

; Types
(prim_type) @type.builtin
(type_path (ident) @type)

; Function
(func (ident) @function)
(param (ident) @variable.parameter)

; Other operators
"as" @operator
"*" @operator
"&" @operator
"'" @operator

; Punctuations
"::" @punctuation.delimiter
"." @punctuation.delimiter
";" @punctuation.delimiter

"(" @punctuation.bracket
")" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket

; Generics
(gen_args
    "<" @punctuation.bracket
    ">" @punctuation.bracket)

(gen_params
    "<" @punctuation.bracket
    ">" @punctuation.bracket)

; Paths
((path_in_expr
    path: (ident) @type)
    (#match? @type "^[A-Z]"))

((path_in_expr
    path: (path_in_expr
    name: (ident) @type))
    (#match? @type "^[A-Z]"))
