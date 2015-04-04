; Code from "The Little LISPer"

;; Definitions to work with scheme
(define x (list 1 2 3 4)) ;; For testing
(define atom? (let ((f1 pair?) (f2 not)) (lambda (x) (f2 (f1 x)))))
;;(define t #t)
;;(define f #f)

;; Chapter 2
(define lat?
  (lambda (l)
    (cond
     ((null? l) t)
     (((atom? (car l)) t)
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