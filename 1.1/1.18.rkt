#lang racket

(require "1.17.rkt")

(define (product a b )
        (if (= b 1) 
            a 
            (if (odd? b) 
                (product (+ a (double a)) (halve(- b 1))) 
                (product (double a) (halve b)))))
(display (product 3 4))