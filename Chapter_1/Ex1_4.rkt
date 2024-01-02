#lang sicp
; a-plus-abs-b is a procedure that add a + abs(b), 
; this is achieved by using primitive expressions ('+' and '-') as the operators 
(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

(a-plus-abs-b 2 -2) ; 4
(a-plus-abs-b -2 2) ; 0 
(= (a-plus-abs-b -2 2) (a-plus-abs-b 2 -2)) ; #f