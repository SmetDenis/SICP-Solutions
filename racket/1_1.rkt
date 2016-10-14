#lang racket

(define a 3)

(define b (+ a 1))

;; 19
(+ a b (* a b))

;; #f
(= a b)

;; 3
(if (and (> b a) (< b (* a b)))
    a
    b)

;; 16
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

;; 6
(+ 2 (if (> b a) b a))

;; 16
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
