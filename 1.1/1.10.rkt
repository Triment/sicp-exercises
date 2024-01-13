#lang racket
;

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))
                 
;f(n) = 2n
;g(n) = (A 1 n) = 2^n
;g(n)可以展开进行推导
;h(n)比较复杂放弃
(displayln (A 2 4))
;是一个分段函数

