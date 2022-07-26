#lang sicp

(define (cube x) (* x x x))

(define (third x y)
  (/ (+ (/ x (* y y)) (* 2 y)) 3))

(define (improve guess x)
  (third x guess))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.00001))


(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 27)