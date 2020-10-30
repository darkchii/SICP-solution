(define (max a b c)
  (cond ((and (<= b a) (<= c a) a))
	((and (<= a b) (<= c b) b))
	((and (<= b c) (<= a c) c))))
