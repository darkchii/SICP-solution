(define (double x)
  (+ x x))

(define (halve x)
  (/ x 2))

(define (mult a b)
  (define (mult-iter x a b)
    (cond ((= b 0) x)
	  ((even? b) (mult-iter x (double a) (halve b)))
	  (else (mult-iter (+ a x) a (- b 1)))))
  (mult-iter 0 a b))
