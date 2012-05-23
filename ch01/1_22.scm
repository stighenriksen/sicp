(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (real-time-clock)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (real-time-clock) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (search-for-primes start end)
  (cond ((even? start)
         (search-for-primes (+ start 1) end))
        ((< start end) 
             (timed-prime-test start)
             (search-for-primes (+ start 2) end))
        (else "done")))

(search-for-primes 10000000000 10000000900) ; about 147 in average
(search-for-primes 100000000000 100000009000) ; around 460 in average
; (* (sqrt 10) 147) = 464 
