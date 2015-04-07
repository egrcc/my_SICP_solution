(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (integral f a b n)
  (define h (/ (- b a) n))
  (define (next a)
    (+ a 1))
  (define (y k)
    (f (+ a (* k h))))
  (define (term k)
    (if (and (= k 0) (= k n))
        (y k)
        (if (= (remainder k 2) 0)
            (* 2 (y k))
            (* 4 (y k))))
    )
  (* (/ h 3) (sum term 0 next n)))

(define (cube x)
  (* x x x))






