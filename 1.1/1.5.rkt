#lang racket
;原解答：正则序会报错，展开p报错 racket采用 正则序
;正确解答：正则序是先展开再规约求解，应用序是先求解参数然后模式匹配函数体，所以应用序解释器会无限循环求解(p),而正则序会正常运行，所以racket是应用序
(define (p) (p))
(define (test x y)
    (if (= x 0)
        0
        y))
(displayln (test 0 (p)))