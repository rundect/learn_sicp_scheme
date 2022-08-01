#lang sicp

;linear recursive process
(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))


(+ 4 5)
