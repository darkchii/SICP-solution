(define (reverse items)
  (define (reverse-iter lst res)
    (if (null? lst)
	res
	(reverse-iter (cdr lst) (cons (car lst) res))))
  (reverse-iter items ()))
