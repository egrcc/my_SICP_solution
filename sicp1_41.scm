(define (double f)
  (lambda (x) (f (f x))))

(define (inc a)
  (+ a 1))

(((double (double double)) inc) 5) ;21