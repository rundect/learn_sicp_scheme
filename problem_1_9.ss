#lang scheme

(define (inc x) (+ x 1))
(define (dec y) (- y 1))

(dec 4)
(inc 5)

(define (sum a b)
  (if (= a 0)
      b
      (inc (sum (dec a) b))))
(sum 4 5)

(define (sum1 a b)
  (if (= a 0)
      b
      (sum1 (dec a) (inc b))))
(sum1 4 5)