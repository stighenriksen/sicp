(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

; With applicative-order the interpreter will enter an infinite loop evaluating (p)
; With normal-order-evaluation the formal param y will be substituted by (p); but
; (p) will never be evaluated since (= x 0) is true
