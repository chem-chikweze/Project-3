
;; To run: (load "p.lisp)

(defun appen(x y)
    (append_helper  y (reverse x))
)
(defun append_helper(x y)
    (if y 
        (append_helper (cons (car y) x) (cdr y))
        x
    )
)

(defun reverse(x)
    (reverse_helper x nil)
)
(defun reverse_helper(x y)
    (if x
        (reverse_helper (cdr x) (cons (car x) y)) 
        y
    )
)


;MAP
(defun nub(x)
    (if(car x)
        (cond ((count2 (car x) ) (cons (cdr x) (nub (cdr x)))))
    )
)

(defun count2(x y)
    (> (count_helper x (car y) 0) 1)
)
(defun count_helper(x y z)
    (cond ((= (car x) y) (+ 1 z)))
)


;; FOLD
;;FILTER
;;MERGE
(defun merge(a b)
    (merge_help a b nil)
)
(defun merge_help(a b c)
    (cond ((< (car a) (car b)) (merge_help (car a) b (cons c (car a)) ))
    )
)

(defun addtoend(a b)
    (reverse (cons a (reverse b)))
)

(defun indexof (a b)
    (write (index_helper a b 0))
)
(defun index_helper(a b c) 
    (cond   ((null (car b)) -1)
            ((equal a (car b)) c)
            ((null (equal a (car b))) (index_helper a (cdr b) (+ 1 c)))
            
    )
)

(defun remove_all(a b)
	(reverse (remove_all_helper a b NIL))
)
(defun remove_all_helper (a b c)
	(cond   ((equal (car b) NIL) c)

		    ((null (equal a (car b)))   (remove_all_helper a (cdr b) (cons (car b) c)))

		    (t  (remove_all_helper a (cdr b) c))
	)
)

;;SET FUNCTIONS
(defun member(a b)
    (cond   ((null b) nil)
			((eql a (car b)) t)
            (t (member a (cdr b)))
    )
)

(defun insert(a b)
    (cons a b)
)
(defun union(a b)
    (append a b)
)

(defun cardinality(a)
    (cardinality_helper a 0)
)

(defun cardinality_helper(a b)
    (cond   ((null (car a)) b)
            (t (cardinality_helper (cdr a) (+ b 1)))
    )
)

;; Maths
(defun abs(x)
    (cond ((> x 0) x)
        (t (* -1 x))            
    )
)

(defun factorial(x)
    (cond   ((= x 0) 1)
            ((> x 0) (* x (factorial (- x 1))))
    )
)

(defun right-tri(a b c)
    (cond   ((= (* c c) (+ (* a a) (* b b))) t))
)

(defun gcd(a b)
    (cond   ((= a b) a)
            ((and (> a b) (> b 0)) (gcd (- a b) b))
            ((and (< a b) (> a 0)) (gcd a (- b a)))
            ((and (< a 0) (> b 0)) (- (gcd (- a) b)))
            ((and (> a 0) (< b 0)) (- (gcd a (- b))))
            ((and (< a 0) (< b 0)) (gcd (- a) (- b)))
    )
)

(defun mod(x a)
    (cond   ((and (and (< x a) (> x 0)) (> a 0))  x)
            ((and (> x 0) (< a 0)) (-(mod (- (* (- 1) a) x) (- a))))
            ((and (> x 0) (> a 0)) (mod (- x a) a))
            ((and (< x 0) (> a 0)) (mod (+ a x) a))
            ((and (< x 0) (< a 0)) (-(mod (- x) (- a))))
            ((< (abs x) (abs a)) x)
    )
)

(defun fib (n &optional (a 0) (b 1) (acc ()))
  (if (zerop n)
      (nreverse acc)
      (fib (1- n) b (+ a b) (cons a acc))))

(defun factorsum(x)
    (- (factorsum_helper x 1 0) x)
)
(defun factorsum_helper(x a b)
    (cond   ((= x a) (- b x))
            ((and (= 0 (mod x a)) (null (= x a))) (factorsum_helper x (+ a 1) (+ b x)))
            ((and (null (= 0 (mod x a))) (null (= x a))) (factorsum_helper x (+ a 1) b))
    )
)


(princ "Welcome to Append. ")
(finish-output)
(princ "Enter first argument (a list) in parenthesis: ")
(finish-output)
(setq a (read))
(princ "Enter second argument (a list) in parenthesis: ")
(finish-output)
(setq b (read))
(print (append a b))

(princ "Welcome to Reverse. ")
(finish-output)
(princ "Enter list to reverse in parenthesis: ")
(finish-output)
(setq x (read))
(print (reverse x))

(princ "Welcome to Add to end. ")
(finish-output)
(princ "Enter first argument: ")
(finish-output)
(setq a (read))
(princ "Enter second argument (a list) in parenthesis: ")
(finish-output)
(setq b (read))
(print (addtoend a b))

(princ "Welcome to Indexof. ")
(finish-output)
(princ "Enter first argument: ")
(finish-output)
(setq a (read))
(princ "Enter second argument (a list) in parenthesis: ")
(finish-output)
(setq b (read))
(print (index_helper a b 0))

(princ "Welcome to Remove all. ")
(finish-output)
(princ "Enter first argument: ")
(finish-output)
(setq a (read))
(princ "Enter second argument (a list) in parenthesis: ")
(finish-output)
(setq b (read))
(print (remove_all a b))


;; SET

(princ "Welcome to Member. ")
(finish-output)
(princ "Enter first argument: ")
(finish-output)
(setq a (read))
(princ "Enter second argument (a list) in parenthesis: ")
(finish-output)
(setq b (read))
(print (member a b))
(terpri)


(princ "Welcome to Insert. ")
(finish-output)
(princ "Enter first argument: ")
(finish-output)
(setq a (read))
(princ "Enter second argument (a list) in parenthesis: ")
(finish-output)
(setq b (read))
(print (insert a b))
(terpri)

(princ "Welcome to Union. ")
(finish-output)
(princ "Enter first (a list) in parenthesis: ")
(finish-output)
(setq a (read))
(princ "Enter second argument (a list) in parenthesis: ")
(finish-output)
(setq b (read))
(print (union a b))
(terpri)

(princ "Welcome to Cardinality. ")
(finish-output)
(princ "Enter argument (a list) in parenthesis: ")
(finish-output)
(setq a (read))
(print (cardinality a))
(terpri)

;; Maths
(princ "Welcome to Abs. ")
(finish-output)
(princ "Enter argument: ")
(finish-output)
(setq a (read))
(print (abs a))
(terpri)

(princ "Welcome to Factorial. ")
(finish-output)
(princ "Enter argument: ")
(finish-output)
(setq a (read))
(print (factorial a))
(terpri)

(princ "Welcome to Right tri. ")
(finish-output)
(princ "Enter first number ")
(finish-output)
(setq a (read))
(princ "Enter second number ")
(finish-output)
(setq b (read))
(princ "Enter third number ")
(finish-output)
(setq c (read))
(print (right-tri a b c))
(terpri)

(princ "Welcome to Prime. ")
(finish-output)
(princ "Enter argument: ")
(finish-output)
(setq a (read))
(print (prime a))
(terpri)

(princ "Welcome to Fibonnaci. ")
(finish-output)
(princ "Enter argument: ")
(finish-output)
(setq a (read))
(print (fib a))
(terpri)

;; REQ

(princ "Welcome to Perfectp. ")
(finish-output)
(princ "Enter argument: ")
(finish-output)
(setq a (read))
(print (perfectp a))
(terpri)

(princ "Welcome to Abundantp. ")
(finish-output)
(princ "Enter argument: ")
(finish-output)
(setq a (read))
(print (abundantp a))
(terpri)

(princ "Welcome to Deficientp. ")
(finish-output)
(princ "Enter argument: ")
(finish-output)
(setq a (read))
(print (deficientp a))
(terpri)
