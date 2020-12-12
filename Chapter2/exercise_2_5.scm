(define (cons a b)
  (* (expt 2 a)
     (expt 3 b)))

(define (div z a)
  (define (iter i c)
    (if (zero? (remainder c a))
	(iter (+ i 1) (/ c a))
	i))
  (iter 0 z))

(define (car c) (div c 2))
(define (cdr c) (div c 3))
