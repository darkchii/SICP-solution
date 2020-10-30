(define (count-change x)
  (cc x 5))

(define (cc x kinds-of-coins)
  (cond ((= x 0) 1)
	((or (< x 0) (= kinds-of-coins 0)) 0)
	(else (+ (cc x
		     (- kinds-of-coins 1))
		 (cc (- x
			(first-denomination kinds-of-coins))
		     kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1)
	((= kinds-of-coins 2) 5)
	((= kinds-of-coins 3) 10)
	((= kinds-of-coins 4) 25)
	((= kinds-of-coins 5) 50)))

