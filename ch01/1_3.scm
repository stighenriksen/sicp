(define (sum-of-square x y)
  (+ (* x x) (* y y)))

(define (sum-of-square-of-two-largest x y z)
  (cond 
   ((and (>= x y) (>= y z)) (sum-of-square x y))
   ((and (>= x z) (>= z y)) (sum-of-square x z))
   ((and (>= y x) (>= x z)) (sum-of-square y x))
   ((and (>= y z) (>= z x)) (sum-of-square y z))
   ((and (>= z x) (>= x y)) (sum-of-square z x))
   ((and (>= z y) (>= y x)) (sum-of-square z y))))

; test
(sum-of-square-of-two-largest 10 3 10)
