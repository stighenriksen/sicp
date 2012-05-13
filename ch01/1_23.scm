(define (next n)
  (if (= n 2)
      3
      (+ n 2)))


(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= n (smallest-divisor n)))


(smallest-divisor 199) ; 199
(smallest-divisor 1999) ; 1999
(smallest-divisor 19999) ; 7

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

(search-for-primes 10000000000 10000000900) ; about 92  in average, previous was 147
(search-for-primes 1000000000000 1000000090000) ; about 932 in average, previous was 1646

;(/ 147.0 92.0)
;(/ 1646 932.0)
; the ratio is about 1.6. Might be because of th if in next, or due to other processes running on computer.
; also, the ratio will probably converge towards 2.0 as we increase the size of the number ranges
