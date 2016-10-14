#lang racket
(require rackunit)

(define (solution a b c)
  (define (square a) (* a a))
  (define (square-sum a b) (+ (square b) (square a)))  
  (cond
    ((and (> a c) (> b c)) (square-sum a b))
    ((and (> a b) (> c b)) (square-sum a c))
    ((and (> b a) (> c a)) (square-sum b c))))

(check-equal? (solution 1 2 3) 13)
(check-equal? (solution 3 4 2) 25)
(check-equal? (solution 5 3 4) 41)
