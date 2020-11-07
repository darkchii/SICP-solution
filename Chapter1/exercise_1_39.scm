(define (tan-cf x k)
  (define (rev f s i)
    (if (> i k)
	(/ (s x) (f i))
	(/ (s x) (- (f i)
		    (rev f s (+ i 1))))))
  (/ x (- 1
	  (rev (lambda (i) (+ (* 2.0 i) 1))
	       square
	       1))))
