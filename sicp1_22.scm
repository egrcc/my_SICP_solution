(load "sicp1_21.scm")

(define (report-prime elapsed-time n)
  (display n)
  (display " *** ")
  (display elapsed-time))



(define (search-next-prime n start-time)
  (if (prime? n)
      (begin
        (report-prime (- (runtime) start-time) n)
        n)
      (search-next-prime (+ n 1) start-time)))