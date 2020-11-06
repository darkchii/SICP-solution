(define (accumulate combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
	result
	(iter (next a) (combiner result (term a)))))
  (iter a null-value))

(define (wpi n)
  (define (f n)
    (let ((a (* 2.0 n)))
       (/ (* a (+ a 2.0))
	  (square (+ a 1.0)))))
  (* 4.0
     (accumulate *
		 1.0
		 f
		 1
		 (lambda (x) (+ x 1))
		 n)))
