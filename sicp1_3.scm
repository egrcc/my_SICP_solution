(define (sum-of-max-two-numbers x y z)
  (cond ((< x y) (if (< x z) (+ y z) (+ y x)))
        ((> x y) (if (< y z) (+ x z) (+ x y)))
        ((= x y) (if (< x z) (+ x z) (+ x y)))))