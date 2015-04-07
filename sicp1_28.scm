(define (Miller-Rabin-test n)
  (test n 1))

(define (test n count)
  (if (= count n)
      (display "n is a prime.")
      (if (= (expmod count (- n 1) n) 1)
          (test n (+ count 1))
          (display "n is not a prime."))))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (non-trival-sqrt? (expmod base (/ exp 2) m) m)) m))
        (else 
          (remainder (* base (expmod base (- exp 1) m))
                     m))))

(define (non-trival-sqrt? a n)
  (if (and (not (= a 1)) 
          (not (= a (- n 1)))
          (= 1 (remainder (* a a) n)))
      0
      a))