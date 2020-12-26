(define x1 (list 1 3 (cons 5 7) 9))
(cdr (car (cdr (cdr x1))))

(define x2 '((7)))
(car (car x2))

(define x3 (cons 1 (cons 2 (cons 4 (cons 5 (cons 6 7))))))
(cdr (cdr (cdr (cdr (cdr (cdr x3))))))
