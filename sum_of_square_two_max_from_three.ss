#lang scheme
(define (square x) (* x x))

(define (sum-of-squares x y)
(+ (square x) (square y)))

(define (f a b c)
  (cond ((and (> a b) (> c b)) (sum-of-squares a c))
        ((and (> c a) (> b a)) (sum-of-squares c b))
        ((and (> a c) (> b c)) (sum-of-squares a b))
        )
  )

(f 1 2 3)