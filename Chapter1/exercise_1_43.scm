(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated f n)
  (if (> 1 n)
      (lambda (x) x)
      (compose f (repeated f (- n 1)))))
