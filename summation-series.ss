#lang racket

(define (term a) (* a a))
(define (next b) (+ b 1))
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(sum term 2 next 3)