10 ;10

(+ 5 3 4) ;12

(- 9 1) ;8

(/ 6 2) ;3

(+ (* 2 4) (- 4 6)) ;6

(define a 3) ; a or nothing depending on interpreter

(define b (+ a 1))  ; b or nothing depending on interpreter

(+ a b (* a b)) ; 19

(if (and (> b a) (< b (* a b)))
    b
    a)                           ; 4

(+ 2 (if (> b a) b a))  ;  6

(* (cond (( > a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))               ; 16

