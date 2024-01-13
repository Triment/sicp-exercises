#lang racket

(define dec (lambda (x) (- x 1)))
(define inc (lambda (x) (+ x 1)))
;第一个为递归 inc的参数在每次计算时无法立刻确定
; (define (+ a b)
;   (if (= a 0)
;     b 
;       (inc (+ (dec a) b))))
;第二个为尾递归每次的计算将是确定的
(define (+ a b)
  (if (= a 0) 
      b 
      (+ (dec a) (inc b))))