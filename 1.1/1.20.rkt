#lang racket

;正则序调用remainder调用应该是8次

(define (gcd a b)
(displayln (list a b))
  (if (= b 0)
      a
      (gcd b (remainder a b))))
(gcd 206 40)