#lang scheme

(define list1 (list 1 2 3))
(define list2 (list 4 5 6))

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))

(append list1 list2)