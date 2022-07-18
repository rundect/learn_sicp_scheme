#lang sicp

(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-square-two-largest a b c)
  (cond ((and (> a b) (> c b)) (sum-of-squares a c))
        ((and (> a c) (> b c)) (sum-of-squares a b))
        (else (sum-of-squares b c))))

(sum-square-two-largest 1 3 5)