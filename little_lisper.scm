; Code from "The Little LISPer"

;; Chapter 2
(define (lat? l)
  (lambda (l)
    (cond
     ((null? l) t)
     ((atom? (car l) t)
      (t nil)))))

(define member?
  (lambda (a lat)
    (cond 
     ((null? lat) #f)
     (else (or 
	 (eq? (car lat) a)
	 (member? a (cdr lat)))))))

;; Chapter 3
(define (is-5? n)
  (= n 5))