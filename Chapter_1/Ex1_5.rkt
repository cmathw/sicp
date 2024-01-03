#lang sicp

(define (p) (p))

(define (test x y)
    (if (= x 0)
        0
        y))

(test 0 (p))

; Applicative Order
; Never terminates because (p) is infinitely expanded to itself

; Normal Order
; test 0 (p)
; (if (= 0 0) 0 (p))
; 0
