(load "sicp1_21.scm")

(define (filtered-accumlate filtered combiner null-value term a next b)
  (if (> a b)
      null-value
      (if (filtered (term a))
          (combiner (term a)
                (filtered-accumlate filtered combiner null-value term (next a) next b))
          (filtered-accumlate filtered combiner null-value term (next a) next b))
      ))

(define (filtered-accumlate-iter filtered combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        null-value
        (if (filtered term a)
            (iter (next a) (combiner result (term a)))
            (iter (next a) result))
        )))

(define (all-primes-sum a b)
  (filtered-accumlate prime? + 0 (lambda (x) x) a (lambda (x) (+ x 1)) b))

(define (relatively-prime-product n)
  (define (relatively-prime? i)
    (= (gcd n i) 1))
  (filtered-accumlate relatively-prime? * 1 (lambda (x) x) 1 (lambda (x) (+ x 1)) n))

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))


