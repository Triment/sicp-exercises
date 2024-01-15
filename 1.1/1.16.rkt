#lang racket
(define (fast-expt b n product) 
        (cond ((= n 0) product)
              ((odd? n) (fast-expt b (- n 1) (* b product)))
              (else (fast-expt (* b b) (/ n 2) product)) ))
(displayln (fast-expt 88 1024 1))