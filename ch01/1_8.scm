; New version:

(define (cube-iter guess oldguess x)
  (if (good-enough? guess oldguess x)
  guess
  (cube-iter (improve guess x) guess
             x)))

(define (improve guess x)
  (/ 
   (+ (/ x (square guess)) 
      (* 2 guess))
   3))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess oldguess x)
  (< (abs (- guess oldguess)) 0.00001))

(define (cube x)
  (cube-iter 1.0 9999 x))

(cube 24) ; ;Value: 2.884499140614819
