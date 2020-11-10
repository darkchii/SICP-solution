(define (make-point x y) (cons x y))

(define (x-point x) (car x))

(define (y-point y) (cdr y))

(define (make-segment point1 point2)
  (cons point1 point2))

(define (start-segment p) (car p))

(define (end-segment p) (cdr p))

(define (midpoint-segment segment)
  (let ((x (/ (+ (x-point (start-segment segment)) (x-point (end-segment segment))) 2.0))
	(y (/ (+ (y-point (start-segment segment)) (y-point (end-segment segment))) 2.0)))
    (make-point x y)))
