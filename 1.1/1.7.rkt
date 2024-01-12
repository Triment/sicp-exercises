#lang racket
;本题思路就是需要每次递归先求出猜测值和变更值,答案算抄的
(require "sqrt.rkt")

(displayln (sqrt-iter 1 0.00000000009))