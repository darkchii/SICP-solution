(define (smooth f dx)
  (lambda (x)
    (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3.0)))

(define (smooth-n-times g x dx n)
  ((repeated (smooth g dx) n) x))
