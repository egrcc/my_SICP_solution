(load "sicp1_43.scm")

(define dx 0.00001)

(define (smooth f)
  (lambda (x) (/ (+ (f (- x dx))
                    (f x)
                    (f (+ x dx))) 
                 3)))

(define (n-smooth f n)
  (if (= n 1)
      (smooth f)
      (smooth (n-smooth f (- n 1)))))

(define (smooth-n-times f n)
    (let ((n-times-smooth (repeated smooth n)))
        (n-times-smooth f)))