(define (cont-frac n d a k)
  (if (> a k)
      (/ (n a) (d a))
      (/ (n a) (+ (d a)
		  (cont-frac n d (+ a 1) k)))))

(define (cont-frac-iter n d k)
  (define (iter i result)
    (if (< i 0)
	result
	(iter (- i 1) (/ (n i) (+ (d i) result)))))
  (iter k 0))
