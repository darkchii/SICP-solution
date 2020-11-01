(define (fun-rev n)
  (if (< n 3)
      n
      (+
       (fun (- n 1))
       (* 2 (fun-rev (- n 2)))
       (* 3 (fun-rev (- n 3))))))

(define (fun-iter n)
  (define (fun a b c n)
    (cond ((= n 0) a)
	  ((= n 1) b)
	  ((= n 2) c)
	  (else (fun b c (+ c (* 2 b) (* 3 a)) (- n 1)))))
  (fun 0 1 2 n))
