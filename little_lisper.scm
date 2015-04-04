; Code from "The Little LISPer"
(define (is-5? n)
  (= n 5))

;; Definitions to work with scheme
(define x '(1 2 3 4)) ;; For testing
(define atom? (let ((f1 pair?) (f2 not)) (lambda (x) (f2 (f1 x)))))

;; Chapter 2
(define lat?
  (lambda (l)
    (cond
     ((null? l) #t)
     ((atom? l))
     ((atom? (car l)) (lat? (cdr l)))
      (#t #f))))

(define member?
  (lambda (a lat)
    (cond 
     ((null? lat) #f)
     (else (or 
	 (eq? (car lat) a)
	 (member? a (cdr lat)))))))

;; Chapter 3
(define rember
  (lambda (a lat)
    (cond
      ((null? lat) '())
      ((eq? (car lat) a) (cdr lat))
      (#t (cons (car lat)
                (rember a (cdr lat)))))))