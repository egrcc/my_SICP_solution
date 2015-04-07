(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))

(define (factorial n)
  (product (lambda (a) a)
           1
           (lambda (a) (+ a 1))
           n))

(define (pi-approximation n)
  (* 4 (/ (product (lambda (a) (* a (+ a 2))) 
                   2
                   (lambda (a) (+ a 2)) 
                   n)
          (product-iter (lambda (a) (* a a)) 
                   3
                   (lambda (a) (+ a 2))
                   (+ n 1)))))