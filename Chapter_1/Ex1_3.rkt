#lang sicp

; Excercise 1.3

; Define a function to find the max of 2 numbers
(define (max x y)
    (cond ((> x y) x)
        (else y)))
        
; Define a function to find the min of 2 numbers
(define (min x y)
    (cond ((< x y) x)
        (else y)))

; Define a function to square a number
(define (square x) (* x x))

; Define a compound function to sum the square of two numbers
(define (sum_squares x y) (+ (square x) (square y)))

; Define a procedure that takes in 3 numbers and sums the squares of the largest 2
(define (top_sum_square x y z)
    (let ((a (max x y))
         (b (max (min x y) z)))
    (sum_squares a b)))

(top_sum_square 0 1 2)