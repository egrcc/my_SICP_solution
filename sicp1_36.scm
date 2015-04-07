(define tolerance 0.00001)
(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2))
       tolerance))
  (define (try guess)
    (newline)
    (display guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (y x)
  (/ (log 1000) (log x)))

(define (not-average-damping)
  (fixed-point y 2.0))

(define (average-damping)
  (fixed-point (lambda (x) (* (/ 1 2) (+ x (y x)))) 2.0))
