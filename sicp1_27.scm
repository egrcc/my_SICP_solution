(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp) 
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else 
          (remainder (* base (expmod base (- exp 1) m))
                     m))))

(define (test n count)
  (if (= count n)
      (display "n is a prime.")
      (if (= (expmod count n n) count)
          (test n (+ count 1))
          (display "n is not a prime."))))

(define (prime-test n)
  (test n 1))