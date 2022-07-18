#lang scheme

(define (length items)
  (if (null? items)
      0
      (+ 1 (length (cdr items)))))
(define odds (list 1 3 5 7))
(length odds)
(define squares (list 1 4 9 16 25))
(append squares odds)