(define (pascal-elem row column)
  (if (or (= row 1) (= column 1) (= column row)) 
      1
      (+ (pascal-elem (- row 1) (- column 1))
         (pascal-elem (- row 1) column))))

(pascal-elem 5 4)
