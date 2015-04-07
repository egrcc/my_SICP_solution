(define (times a b)
  (cond ((= b 0) 0)
        ((even? b) (times (+ a a) (/ b 2)))
        (else (+ a (times a (- b 1))))))



