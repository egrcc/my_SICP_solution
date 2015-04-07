;正则序 0,应用序 死循环

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))