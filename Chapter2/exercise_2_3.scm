(define (rectangle left-top w h)
  (make-segment left-top
		(make-point (+ (x-point left-top) w)
			    (+ (y-point left-top) h))))

(define (rectangle left-top right-down)
  (make-segment left-top right-down))

(define (perimeter rect)
  (let ((w (- (x-point (end-segment rect)) (x-point (start-segment rect))))
	(h (- (y-point (end-segment rect)) (y-point (start-segment rect)))))
    (* 2 (+ w h))))

(define (area rect)
  (let ((w (- (x-point (end-segment rect)) (x-point (start-segment rect))))
	(h (- (y-point (end-segment rect)) (y-point (start-segment rect)))))
    (* w h)))
