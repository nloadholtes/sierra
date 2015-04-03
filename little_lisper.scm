; Code from "The Little LISPer"

;; Chapter 2
(define lat?
  (lambda (l)
    (cond
     ((null? l) t)
     ((atom? (car l) t)
      (t nil)))))

(define member?
  (lambda (a lat)
    (cond 
     ((null? lat) nil)
     (t (or 
	 (eq? (car lat) a)
	 (member? a (cdr lat)))))))

