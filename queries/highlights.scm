"and" @keyword
"as" @keyword
"async" @keyword
"await" @keyword
"break" @keyword
"const" @keyword
"continue" @keyword
"do" @keyword
"elif" @keyword
"else" @keyword
"enum" @keyword
"false" @keyword
"for" @keyword
"func" @keyword
"if" @keyword
"impl" @keyword
"in" @keyword
"!in"
"infix" @keyword
"init" @keyword
"loop" @keyword
"match" @keyword
"mod" @keyword
"move" @keyword
"mut" @keyword
"return" @keyword
"or" @keyword
"party" @keyword
"pri" @keyword
"pub" @keyword
"ref" @keyword
"self" @keyword
"static" @keyword
"struct" @keyword
"super" @keyword
"this" @keyword
"trait" @keyword
"true" @keyword
"type" @keyword
"union" @keyword
"unsafe" @keyword
"use" @keyword
"let" @keyword
"where" @keyword
"while" @keyword
"yield" @keyword

; Literals
(bool_lit) @number
(int_lit) @number
(float_lit) @number
(char_lit) @number

(char_lit) @string
(string_lit) @string

; Types
(prim_type) @type

; Function
(func name: (ident) @function)
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

