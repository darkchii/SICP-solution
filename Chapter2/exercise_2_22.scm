(define (square-list items)
  (define (iter things answer)
    (if (null? things)
	answer
	(iter (cdr things)
	      (cons (square (car things))
		    answer))))
  (iter items '()))
;; The "iter" method passes and connects the list elements in order,
;; each iteration, the program will combine the pervious answer
;; and the square of the current "car" term and pass it to the next
;; iteration, so no matter how to modify that cannot get the
;; expected results.
