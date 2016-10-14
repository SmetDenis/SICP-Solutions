#lang racket
(require rackunit)

(define (sum-of-squares-of-top-two a b c)
  (define (square a) (* a a))
  (define (square-sum a b) (+ (square b) (square a)))  
  (cond
    ((and (> a c) (> b c)) (square-sum a b))
    ((and (> a b) (> c b)) (square-sum a c))
    ((and (> b a) (> c a)) (square-sum b c))))

(check-equal? (sum-of-squares-of-top-two 1 2 3) 13)
(check-equal? (sum-of-squares-of-top-two 3 4 2) 25)
(check-equal? (sum-of-squares-of-top-two 5 3 4) 41)
