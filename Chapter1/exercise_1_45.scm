(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated f n)
  (if (> 1 n)
      (lambda (x) x)
      (compose f (repeated f (- n 1)))))

(define (average a b)
  (/ (+ a b) 2.0))

(define (average-damp f)
  (lambda (x) (average x (f x))))

(define (fixed-point g first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) 0.00001))
  (define (try guess)
    (let ((next (g guess)))
      (if (close-enough? guess next)
	  next
	  (try next))))
  (try first-guess))

(define (power base exp)
  (cond ((= exp 0) 1)
	((even? exp) (power (square base) (/ exp 2)))
	(else (* base (power base (- exp 1))))))

(define (high-order n x exp)
  (fixed-point ((repeated average-damp n) (lambda (y) (/ x (power y exp)))) 1.0))

(high-order 3 2 8)
; Call the average-damp at least 3 times
; for y = 2 / y^8
; Value: 1.0800601441048037
