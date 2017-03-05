# json.scm
Scheme to JSON utilities

```
;; scheme          json
;; ----------------------
;; symbol      ->  string
;; string     <->  string
;; number     <->  number
;; boolean    <->  boolean
;; vector     <->  array
;; unspecific <->  null
;; alist      <->  object
;; ----------------------   

(load "json")

(json-encode 'foo)   ; => "\"foo\""
(json-encode "bar")  ; => "\"bar\""
(json-encode .1337)  ; => "0.1337"
(json-encode #t)     ; => "true"
(json-encode #(1 2)) ; => "[1,2]"
(json-encode #!unspecific ; => "null"
(json-encode '((a . 0) (b . 42))) ; => "{\"a\":0,\"b\":42}"

;; Decode returns a vector of parsed objects.
;; All object keys are parsed into symbols.
;; All other JSON strings are parsed into strings.

(json-decode "\"foo\"") ; => #("foo")
(json-decode "\"bar\"") ; => #("bar")
(json-decode "0.1337")  ; => #(0.1337)
(json-decode "true")    ; => #(#t)
(json-decode "[1, 2]")  ; => #(#(1 2))
(json-decode "null")    ; => #(#!unspecific)
(json-decode "{\"a\": 0, \"b\": 42}") ; => #(((a . 0) (b . 42)))
```
