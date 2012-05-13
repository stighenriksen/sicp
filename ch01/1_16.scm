(define (iter-expt b n a)
  (cond ((= n 0) a)
        ((odd? n)
         (iter-expt b (- n 1) (* a b)))
        ((even? n)
         (iter-expt (square b) (/ n 2) a))))

(define (expt b n)
  (iter-expt b n 1))

(expt 2 16)

