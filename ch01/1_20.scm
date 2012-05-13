(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

; normal order:
;
; (gcd 206 40)
;  (if (= 40 0)
;      206
;      (gcd 40 (remainder 206 40))))
;
; (gcd 40 (remainder 206 40))
;
; (if (= (remainder 206 40) 0)
;    40
;    (gcd (remainder 206 40) (remainder 40 (remainder 206 40))))
;
; (if (= 6 0)                                                     ;1 eval
;    40
;    (gcd (remainder 206 40) (remainder 40 (remainder 206 40))))
;
; (gcd (remainder 206 40) (remainder 40 (remainder 206 40)))
;
;
; (if (= (remainder 40 (remainder 206 40) 0)
;       (remainder 206 40)
;       (gcd (remainder 40 (remainder 206 40) (remainder (remainder 206 40) ((remainder 40 (remainder 206 40))))))))
;
;
; (if (= (remainder 40 (remainder 206 40)) 0)
;       (remainder 206 40)
;       (gcd (remainder 40 (remainder 206 40) (remainder (remainder 206 40) ((remainder 40 (remainder 206 40))))))))
;
; (if (= 4 0)  ; 3 evals total
;       (remainder 206 40)
;       (gcd (remainder 40 (remainder 206 40) (remainder (remainder 206 40) ((remainder 40 (remainder 206 40))))))))
;
; (gcd   (remainder 40 (remainder 206 40)) ; a
;      (remainder (remainder 206 40)
;                 (remainder 40 (remainder 206 40))) ; b
;
; (if (= (remainder (remainder 206 40)
;                 (remainder 40 (remainder 206 40)))) 0)
;    (remainder 40 (remainder 206 40))
;    (gcd (remainder (remainder 206 40)
;                    (remainder 40 (remainder 206 40)))
;         (remainder (remainder 40 (remainder 206 40)) 
;                    (remainder (remainder 206 40)
;                               (remainder 40 (remainder 206 40))))
;
; (if (= 2 0)                             ; 7 evals total
;    (remainder 40 (remainder 206 40))
;    (gcd (remainder (remainder 206 40)
;                    (remainder 40 (remainder 206 40)))
;         (remainder (remainder 40 (remainder 206 40)) 
;                    (remainder (remainder 206 40)
;                               (remainder 40 (remainder 206 40))))
;
;    (gcd (remainder (remainder 206 40)
;                    (remainder 40 (remainder 206 40))) ;a
;         (remainder (remainder 40 (remainder 206 40)) 
;                    (remainder (remainder 206 40)
;                               (remainder 40 (remainder 206 40)))) ;b
;
;  (if (=          (remainder (remainder 40 (remainder 206 40)) 
;                    (remainder (remainder 206 40)
;                               (remainder 40 (remainder 206 40)))) 0)
;      (remainder (remainder 206 40)
;                    (remainder 40 (remainder 206 40)))
;      (gcd         (remainder (remainder 40 (remainder 206 40)) 
;                    (remainder (remainder 206 40)
;                               (remainder 40 (remainder 206 40)))) (remainder       (remainder (remainder 206 40)
;                    (remainder 40 (remainder 206 40))) (remainder (remainder 40 (remainder 206 40)) 
;                   (gcd         (remainder (remainder 40 (remainder 206 40)) 
;                    (remainder (remainder 206 40)
;                               (remainder 40 (remainder 206 40)))) (remainder       (remainder (remainder 206 40)
;                    (remainder 40 (remainder 206 40))) (remainder (remainder 40 (remainder 206 40)) 
;                    (remainder (remainder 206 40)
;                               (remainder 40 (remainder 206 40))))))))       (remainder (remainder 206 40)
;                               (remainder 40 (remainder 206 40))))))))
;
;
;  (if (= 0 0)  ; 14 evals total
;      (remainder (remainder 206 40)
;                    (remainder 40 (remainder 206 40)))
;      (gcd         (remainder (remainder 40 (remainder 206 40)) 
;                    (remainder (remainder 206 40)
;                               (remainder 40 (remainder 206 40)))) (remainder       (remainder (remainder 206 40)
;                    (remainder 40 (remainder 206 40))) (remainder (remainder 40 (remainder 206 40)) 
;                    (remainder (remainder 206 40)
;                               (remainder 40 (remainder 206 40))))))))
;
;  (if (= 0 0)  ; 18 evals total
;      (remainder (remainder 206 40)
;                    (remainder 40 (remainder 206 40))) ; answer is 2


; applicative order:
; (gcd 206 40)
;  (if (= 40 0)
;      206
;      (gcd 40 (remainder 206 40))))
; (gcd 40 6)   ; 1 eval
;  (if (= 6 0)
;      40
;      (gcd 6 (remainder 40 6)))
;
;      (gcd 6 4)) ; 2 evals
;  (if (= 4 0)
;      6
;      (gcd 4 (remainder 6 4))))
;
;      (gcd 4 2) ; 3 evals
;  (if (= 2 0)
;      4
;      (gcd 2 (remainder 4 2))))
;
;      (gcd 2 0) ; 4 evals
;
;  (if (= 0 0)
;      2
;      (gcd 0 (remainder 2 0))))
;
;      2 ;answer
;
