(define (iterative-improve enough? guess-improve)
  (lambda (x)
    (if (enough? x)
	x
	((iterative-improve enough? guess-improve) (guess-improve x)))))

(define (fixed-point g x)
  (define (close-enough? v)
    (< (abs (- v (g v))) 0.00001))
  ((iterative-improve close-enough? g) x))

(define (average a b)
  (/ (+ a b) 2.0))

(define (average-damp f)
  (lambda (x) (average x (f x))))

(define (sqrt x)
  (fixed-point (average-damp (lambda (y) (/ x y)))
	       1.0))
