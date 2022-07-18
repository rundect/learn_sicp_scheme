#lang scheme

(define x (cons 1 2))
x
(car x)
(cdr x)

(define y (cons 3 4))
(define z (cons x y))
z
(car (car z))
(car (cdr z))