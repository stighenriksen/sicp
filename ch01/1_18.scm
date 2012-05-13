(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))

(define (mult-iter r a b)
  (cond ((= b 0) r)
        ((even? b)
         (mult-iter r (double a) (halve b)))
        ((odd? b)
         (mult-iter (+ r a) a (- b 1)))))

(define (mult a b)
  (mult-iter 0 a b))

(mult 2 20)
        
  
