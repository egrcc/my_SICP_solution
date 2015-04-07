(load "sicp1_37.scm")

(define (tan-cf x k)
  (define (n i)
    (if (= i 1)
        x
        (- 0 (* x x))))
  (cont-frac n (lambda (x) (- (* 2 x) 1)) k))