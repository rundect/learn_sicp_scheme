#lang sicp

(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))
(abs -10)

(define (abs-else x)
  (cond ((< x 0) (- x))
        (else x)))
(abs-else -10)

(define (abs-if x)
  (if (< x 0)
      (- x)
      x))
(abs-if 10)

;(and (> x 5) (< x 10))
;(define (>= x y)(or (> x y) (= x y)))
;(define (>= x y)(not (< x y)))