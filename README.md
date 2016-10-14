# json.scm
Scheme to JSON utilities

```
;; scheme      json
;; ----------------
;; symbol  ->  string
;; string  ->  string
;; number  ->  number
;; boolean ->  boolean
;; null    ->  null
;; list    ->  array
;; alist   ->  object
;; ----------------

(load "json")
(json 'foo)   ; => "\"foo\""
(json "bar")  ; => "\"bar\""
(json .1337)  ; => "0.1337"
(json #t)     ; => "true"
(json '())    ; => "null"
(json '(1 2)) ; => "[1 2]"

(json '((foo 0) (bar 42))) 
#| "{\"foo\":0,\"bar\":42}" |#

(json '((a (1 2 3)) (b ((c 3) (d 2)))))
#| "{\"a\":[1,2,3],\"b\":{\"c\":3,\"d\":2}}" |#
```
