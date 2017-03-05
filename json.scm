;; scheme          json
;; ----------------------
;; symbol      ->  string    'foo    -> "\"foo\""
;; string     <->  string    "bar"  <-> "\"bar\""
;; number     <->  number    .1337  <-> "0.1337"
;; boolean    <->  boolean   #t     <-> "true"
;; vector     <->  array     #(1 2) <-> "[1 2]"
;; unspecific <->  null      #!unspecific <-> "null"
;; alist      <->  object    '((a . 0) (b . 42)) <-> "{\"a\":0,\"b\":42}"
;; ----------------------   

(load "json-encode")
(load "json-decode")

