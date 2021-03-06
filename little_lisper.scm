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

(define firsts
  (lambda (l)
    (cond
      ((null? l) '())
      (#t (cons (car (car l))
          (firsts (cdr l)))))))

(define insertR
  (lambda (new old lat)
    (cond
      ((null? lat) '())
      (#t (cond
            ((eq? (car lat) old)
             (cons old
                   (cons new (cdr lat))))
            (#t (cons (car lat)
                      (insertR
                       new old (cdr lat)))))))))

(define substr
  (lambda (new old lat)
    (cond
      ((null? lat> '()))
      (#t (cond
            ((eq? (car lat) old)
             (cons new (cdr lat)))
            (#t (cons (car lat)
                      (subst
                       new old (cdr lat)))))))))
