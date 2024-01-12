#lang racket

;实现立方根

(define (cube-root guess x)
    (if (good-enough? guess (improve guess x))
        (improve guess x)
        (cube-root (improve guess x) x)))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) guess guess) 3))

(define (good-enough? guess new-guess)
  (< (/ (abs (- new-guess guess)) guess) 0.01))

(displayln (cube-root 1 8))