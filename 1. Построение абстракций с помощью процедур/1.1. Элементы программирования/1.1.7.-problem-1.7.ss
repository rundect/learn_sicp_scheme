#lang sicp

(define (square x) (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))


(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)
(sqrt (+ 100 37))
(sqrt (+ (sqrt 2) (sqrt 3)))
(square (sqrt 1000))


(define (better-good-enough? prev-guess guess x)
  (< (abs (- guess prev-guess)) 0.001))


(define (bettersqrt-iter prev-guess guess x)
  (if (better-good-enough? prev-guess guess x)
      guess
      (bettersqrt-iter (improve guess x)
                 x)))

(define (better-sqrt x)
  (bettersqrt-iter 0 1.0 x))

(better-sqrt 9)
(sqrt (+ 100 37))
(sqrt (+ (sqrt 2) (sqrt 3)))
(square (sqrt 1000))

