(define (accumlate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a)
                (accumlate combiner null-value term (next a) next b))))

(define (accumlate-iter combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
        null-value
        (iter (next a) (combiner result (term a))))))

(define (sum term a next b)
  (accumlate + 0 term a next b))

(define (product term a next b)
  (accumlate * 1 term a next b))