(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
	 (product term (next a) next b))))

(define (prod term a next b)
  (define (iter a result)
    (if (> a b)
	result
	(iter (next a) (* result (term a)))))
  (iter a 1))

(define (pi-wallis n)
  (define (f k)
    (/ 1.0
       (- 1.0 (/ 1.0 (square (* 2.0 k))))))
  (define (inc k) (+ k 1))
  (* 2.0 (prod f 1 inc n)))
