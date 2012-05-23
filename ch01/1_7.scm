(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess )))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 9)


; When y is lower than 0.001, the good-enough test perform poorly since
; the difference between the square of the guess and x may be lower
; then 0.001 but still far from x.
; Example
(sqrt 0.00001)
; This should be 0.0031622... but the result we get is .03135649010771716
; since (good-enough? .03135649010771716 0.00001) = t


; With large numbers, the problem is that it takes a lot of
; recursive calls to sqrt-iter before improve-enough returns true, and the
; procedure may never finish since the limited precision may mean that
; the machine won't be able to represent the error margin correctly.
(sqrt 999999999999999999)

; New version:

(define (sqrt-iter guess oldguess x)
  (if (good-enough? guess oldguess x)
  guess
  (sqrt-iter (improve guess x) guess
             x)))

(define (improve guess x)
  (average guess (/ x guess )))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess oldguess x)
  (< (abs (- guess oldguess)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 9999 x))

(sqrt 0.00001) ; sucesss!
