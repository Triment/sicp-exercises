#lang racket
;sicp exercise 1.3
(define square (lambda (x)(* x x)))
(define hoc (lambda (op lst)
            (cond ((= (length lst) 2);递归基，此处并未对lst的长度做错误检查，lst长度应该大于2
                        (cond ((op (car lst) (car (cdr lst))) (car lst))
                                (else (car (cdr lst)))))
                                ;lst长度超过2的情况下
                        (else (cond ((op (car lst) (hoc op (cdr lst))) (car lst)) (else (hoc op (cdr lst)))) )
            )        
            ))
(define bigger (lambda (x y) (hoc > (list x y))))
(define smaller (lambda (x y) (hoc < (list x y))))
(define 2sum-from-three 
    (lambda 
        (x y z)
        (+ (bigger x y) (bigger (smaller x y) z))
    ))
(define x (2sum-from-three 2 3 4))
(displayln x)