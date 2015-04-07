(define (times a b)
  (fast-times a b 0))

(define (fast-times a b x)
  (cond ((= b 0) x)
        ((even? b) (fast-times (+ a a) (/ b 2) x))
        (else (fast-times a (- b 1) (+ a x)))))