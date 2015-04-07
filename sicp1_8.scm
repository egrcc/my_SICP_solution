(define (cube-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-iter (improve guess x) 
                 x)))

(define (improve guess x)
  (/ (+ (/ x 
           (* guess guess)) 
        (* 2 guess))
     3))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) 
             guess)) 
     (* guess 0.001)))

(define (cube x)
  (cube-iter 1.0 x))