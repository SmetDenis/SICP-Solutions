#lang racket
(require rackunit)

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(check-equal? (a-plus-abs-b 1 2) 3)
(check-equal? (a-plus-abs-b -1 2) 1)
(check-equal? (a-plus-abs-b 1 -4) 5)
