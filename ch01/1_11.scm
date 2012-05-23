; (f(n) = n if n < 3 and f(n) = f(n-1) + 2f(n-2) +3f(n-3) if n > or equal to 3

; recursive process:

(define (f n)
  (if (< n 3)
      n
      (+ (f(- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))


(f 12)
; iterative process
; starting with  a  2; b = 1; c = 0 counter=n
(define (f-iter a b c counter)
  (if (< counter 3)
      a
      (f-iter (+ a (* 2 b) (* 3 c)) a b (- counter 1))))

(define (f-new n)
  (f-iter 2 1 0 n))

(f-new 12)
