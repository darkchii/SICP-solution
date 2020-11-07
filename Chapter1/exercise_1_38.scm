(define (mod3 x)
  ((lambda (i) (cond ((= i 1) (* 2.0 x))
		     (else 1.0)))
   (remainder x 3)))

(+ 2.0 (cont-frac (lambda (i) 1.0)
		  mod3
		  0
		  10000))
