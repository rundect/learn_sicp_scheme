#lang scheme

(define (square x) (* x x))

(define (average x y) (/ (+ x y) 2))

(define (average-damp f)
  (lambda (x) (average x (f x))))

((average-damp square) 10)