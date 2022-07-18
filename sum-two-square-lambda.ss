#lang scheme

(define (square x) (* x x))

((lambda (x y z) (+ x y (square z))) 1 2 3)