(define (double n)
  (+ n n))

(define (halve n)
  (/ n 2))

(define (fast-mult a b)
  (cond ((= b 0) 0)
        ((even? b)
         (double (fast-mult a (halve b))))
        ((odd? b)
         (+ a (fast-mult a (- b 1))))))

(fast-mult 10 10)

      
  
      
      

