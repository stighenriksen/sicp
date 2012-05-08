(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; a and b is substituted in a-plus-abs-b's body:
; ((if (> b 0) +-) a b)) , '(> b 0)' is then evaluated, and the
; if-expression returns the + or - operator depending on if b is bigger
; than 0 or not. We are then left with something like this:
; (+/- a b)
; either + or - minus is then evaluated, and the corresponding procedure
; is then applied to a and b
