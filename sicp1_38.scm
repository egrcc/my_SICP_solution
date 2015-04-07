(load "sicp1_37.scm")

(define (d i)
  (if (= 0 (remainder (+ i 1) 3))
      (* 2.0 (/ (+ i 1) 3))
      1.0))

(define (e-appoximation k)
  (+ 2 (cont-frac (lambda (x) 1.0) d k)))