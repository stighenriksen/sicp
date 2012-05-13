(define (fermat-little n)
  (define (fermat-little-iter n a)
    (cond ((= a 1) #t)
          ((= (remainder (expt a n) n) (remainder a n))
           (fermat-little-iter n (- a 1)))
          (else #f)))
  (fermat-little-iter n (- n 1)))

(fermat-little 2)    ; f
(fermat-little 100)   ; f
(fermat-little 139)   ; t

(fermat-little 561)  ; t
(fermat-little 1105) ; t
(fermat-little 1729) ; t
(fermat-little 2465) ; t
(fermat-little 2821) ; t
(fermat-little 6601) ; t




        
        
        
        
        

        
      
