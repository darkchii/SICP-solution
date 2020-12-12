(define (div-interval x y)
  (if (or (and (< 0 (lower-bound x)) (> 0 (upper-bound x)))
          (and (> 0 (lower-bound x)) (< 0 (upper-bound x)))
          (and (< 0 (lower-bound y)) (> 0 (upper-bound y)))
          (and (> 0 (lower-bound y)) (< 0 (upper-bound y))))
      (error "Interval cross zero")
      (mul-interval x
		    (make-interval (/ 1.0 (upper-bound y))
				   (/ 1.0 (lower-bound y))))))
