(define (make-center-percent c x)
  (let ((err (* c (/ x 100.0))))
    (make-interval (- c err) (+ c err))))

(define (center interval)
  (/ (+ (lower-bound interval) (upper-bound interval)) 2))

(define (percent interval)
  (* (/ (- (upper-bound interval) (lower-bound interval))
	(* 2.0 (center interval))) 100.0))
