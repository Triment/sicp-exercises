#lang racket

(provide double halve)
(define (double x) (+ x x))
(define (halve x) (/ x 2))
(define (* a b)
        (if (odd? b) 
            (+ a (- b 1)) 
            (* (double a) (halve b))))
(displayln (* 3 4))