#lang racket
;
;
(define (pask k n)
  (cond ((or (<= k 1) (<= n 1)) 1);递归基
        (else (+ (pask k (- n 1)) (pask (- k 1) (- n 1))))
        ))
(displayln (pask 2 3));第三层第2个数