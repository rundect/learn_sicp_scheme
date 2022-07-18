#lang scheme

(define (add a b) (+ a b))
(define (mul a b) (* a b))

(define (linear-combination a b x y)
  (add (mul a x) (mul b y)))

(linear-combination 1 3 2 4)