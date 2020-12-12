(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
  (lambda (f)
    (lambda (x)
      (f ((n f) x)))))

(define one (lambda (f) (lambda (x) (f x))))

(define two (lambda (f) (lambda (x) (f (f x)))))

(define (church-numeral->int n)
  ((n (lambda (x) (+ x 1))) 0))

(define (plus m n)
  (lambda (f) (lambda (x) ((m f) ((n f) x)))))

(define (mult m n)
  (lambda (f) (m (n f))))

(define (pow b e) (e b))

(define (dec-1 n)
  (lambda (f)
    (lambda (x)
      (n ((lambda (g) (lambda (h) (h (g f))) ((lambda (u) x) (lambda (u) u))))))))

(define (sub m n) (n (dec-1 m)))
