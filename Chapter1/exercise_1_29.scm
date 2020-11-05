;; (define (integral f a b dx)
;;   (define (add-dx x) (+ x dx))
;;   (* (sum f (+ a (/ dx 2.0)) add-dx b)
;;      dx))


(define (integral-simpson f a b n)
  (define dx (/ (- b a) n))
  (define (index-dx x i) (+ x (* i dx)))
  (define (double x) (+ x 2))
  (define (sum term a next-a i next-i n)
    (if (>= i n)
	0
	(+ (term (next-a a i))
	   (sum term a next-a (next-i i) next-i n))))

  (* (+ (f a)
	(f b)
	(* 4 (sum f a index-dx 1 double n))
	(* 2 (sum f a index-dx 2 double n)))
     (/ dx 3.0)))
