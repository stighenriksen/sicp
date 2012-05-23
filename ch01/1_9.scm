; 1
(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))n

;  (+ 4 5)
;   (if (= 4 0)
;      5
;      (inc (+ (dec 4) 5))))
;   (if #f
;      5
;      (inc (+ (dec 4) 5))))
;      (inc (+ 3 5))
;      (inc (if (= 3 0) 5 (inc (+ (dec 3) 5))))
;      (inc 
;        (if #f
;          5
;          (inc (+ (dec 3) 5))))
;      (inc 
;        (inc (+ (dec 3) 5))))
;      (inc 
;        (inc (+ 2 5))))
;      (inc 
;        (inc 
;          (if (= 2 0)
;            5
;            (inc (+ (dec 2) 5))))
;      (inc 
;        (inc 
;          (if #f
;            5
;            (inc (+ (dec 2) 5))))
;      (inc 
;        (inc 
;          (inc (+ 1 5))))
;      (inc 
;        (inc 
;          (inc 
;            (inc (+ 0 5))
;      (inc 
;        (inc 
;          (inc 
;            (inc 5)
;      (inc 
;        (inc 
;          (inc 
;            6)))
;      (inc 
;        (inc 
;          7))
;      (inc 
;        8
;      9


;2
(define(+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))
;
; (+ 4 5)
; (+ (dec 4) (inc 5))
; (+ 3 6)
; (+ (dec 3) (inc 6))
; (+ 2 7)
; (+ (dec 2) (inc 7))
; (+ 1 8)
; (+ (dec 1) (inc 9))
; (+ 0 9)
; 0
  


; 1. is recursive, 2 is iterative
