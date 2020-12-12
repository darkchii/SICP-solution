(define (same-parity x . y)
  (if (null? x)
      ()
      (cons (x (same-parity y)))))
