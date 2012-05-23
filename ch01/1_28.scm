(define (square-check n m)
  (if (and (not (or (= n 1) (= n (- m 1))))
           (= (remainder (square n) m) 1))
      0
      (remainder (square n) m)))
      
(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (square-check (expmod base (/ exp 2) m) m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (miller-rabin-test n)
  (define (test a)
    (= (expmod a (- n 1) n) 1))
  (test (+ 1 (random (- n 1)))))

(miller-rabin-test 561) ;f
 (miller-rabin-test 1105) ;f
 (miller-rabin-test 13) ;t



