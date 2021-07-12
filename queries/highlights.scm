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
; "pri" @keyword
"pub" @keyword
"ref" @keyword
; "static" @keyword
"struct" @keyword
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

;;; Specific rules for identifiers

; CAPS identifiers treated as constants
((ident) @constant
    (#match? @constant "^[A-Z][A-Z\\d_]+$"))

; PascalCase identifiers in paths treated as types
((path_in_expr
    path: (ident) @type)
    (#match? @type "^[A-Z]"))

((path_in_expr
    path: (path_in_expr
    name: (ident) @type))
    (#match? @type "^[A-Z]"))

; Call expression
(call_expr
    func: (ident) @function)

(call_expr
    func: (field_expr
        field: (field_ident) @function.method))

(call_expr
    func: (path_in_expr
        "::"
        name: (ident) @function))

; `func`
(func (ident) @function)

; Types
(type_ident) @type
(prim_type) @type.builtin
(type_path (ident) @type)

; Other
(comment) @comment

(lifetime (ident) @label)

(self) @variable.builtin
(super) @variable.builtin
(party) @variable.builtin
