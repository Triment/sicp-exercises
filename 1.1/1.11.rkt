#lang racket
;递归
(define f (lambda (n) 
                (cond ((< n 3) n)
                      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3)))))))

;迭代
;解决方式是先找到递推方程
;自底向上进行迭代，这类树状的计算有两种优化思路，一种是记录已计算过的数据到字典，一种是自底向上推
;f(1) = 1 f(2) = 2  f(2)+2f(1)=f(3) f(3)+2f(2)+3f(1) = f(4)
(define (f-iter o d t count n)
     (if (= count n)
          (+ (* 3 o) (* 2 d) t )
          (f-iter d t (+ (* 3 o) (* 2 d) t ) (+ count 1) n))
     )
(displayln (f-iter 0 1 2 3 4))
