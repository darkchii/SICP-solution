(define (square-list items)
  (define (iter things answer)
    (if (null? things)
	answer
	(iter (cdr things)
	      (cons (square (car things))
		    answer))))
  (iter items '()))
; Because of the iter method from head to tail pass and connect the list elements,
; so the program always composes the head with the current cdr item are passed to
; the next iteration and cannot correctly execute.
