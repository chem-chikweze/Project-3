(defun sets() 
    (princ "You are in sets: Choose any of the set functions from 1 to 4: ")    
    (finish-output)
    (setq l (read))
    (princ l)
)
(defun maths() 
    (princ "You are in Maths: Choose any of the Math functions from 1 to 4: ")
    (finish-output)
    (setq l (read))
    (princ l)
)
(defun required() 
    (princ "You are in Required: Choose any of the Required functions from 1 to 4: ")    
    (finish-output)
    (setq l (read))
    (princ l)
)
(defun append_start()
    (princ "Welcome to Append. ")
    (finish-output)
    (princ "Enter first list in parenthesis: ")
    (finish-output)
    (setq a (read))
    (princ "Enter second list in parenthesis: ")
    (finish-output)
    (setq b (read))
    (append a b)
)
(defun reverse_start()
    (princ "Welcome to Reverse. ")
    (finish-output)
    (princ "Enter list to reverse in parenthesis: ")
    (finish-output)
    (setq x (read))
    (reverse x)
)
(defun addtoend_start()
    (princ "Welcome to Add to end. ")
    (finish-output)
    (princ "Enter first argument: ")
    (finish-output)
    (setq a (read))
    (princ "Enter second argument (a list) in parenthesis: ")
    (finish-output)
    (setq b (read))
    (addtoend a b)
)
(defun indexof_start()
    (princ "Welcome to Indexof. ")
    (finish-output)
    (princ "Enter first argument: ")
    (finish-output)
    (setq a (read))
    (princ "Enter second argument (a list) in parenthesis: ")
    (finish-output)
    (setq b (read))
    (indexof a b)
)
(defun remove_start()
    (princ "Welcome to Remove all. ")
    (finish-output)
    (princ "Enter first argument: ")
    (finish-output)
    (setq a (read))
    (princ "Enter second argument (a list) in parenthesis: ")
    (finish-output)
    (setq b (read))
    (remove-all a b)
)
(defun member_start()
    (princ "Welcome to Member. ")
    (finish-output)
    (princ "Enter first argument: ")
    (finish-output)
    (setq a (read))
    (princ "Enter second argument (a list) in parenthesis: ")
    (finish-output)
    (setq b (read))
    (member a b)
)
(defun insert_start()
    (princ "Welcome to Insert. ")
    (finish-output)
    (princ "Enter first argument: ")
    (finish-output)
    (setq a (read))
    (princ "Enter second argument (a list) in parenthesis: ")
    (finish-output)
    (setq b (read))
    (insert a b)
)
(defun union_start()
    (princ "Welcome to Union. ")
    (finish-output)
    (princ "Enter first argument: ")
    (finish-output)
    (setq a (read))
    (princ "Enter second argument (a list) in parenthesis: ")
    (finish-output)
    (setq b (read))
    (union a b)
)
(defun cardinality_start()
    (princ "Welcome to Cardinality. ")
    (finish-output)
    (princ "Enter argument (a list) in parenthesis: ")
    (finish-output)
    (setq a (read))
    (cardinality a)
)


(defun append(x b)
    (if (car x) 
        (cons (car x) (append (cdr x) b))
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


; FOLD
;FILTER
;MERGE
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

(defun indexof(a b)
    (index_helper a b 0)
)
(defun index_helper(a b c) 
    (cond   ((null (car b)) -1)
            ((equal a (car b)) c)
            ((null (equal a (car b))) (index_helper a (cdr b) (+ 1 c)))
            
    )
)

(defun remove-all(a b)
	(reverse (remove-all_helper a b NIL))
)
(defun remove-all_helper (a b c)
	(cond   ((equal (car b) nil) c)
		    ((null (equal a (car b)))   (remove-all_helper a (cdr b) (cons (car b) c)))
		    (t  (remove-all_helper a (cdr b) c))
	)
)

;;;;; SET FUNCTIONS
(defun member(a b)
    (if (= -1 (indexof a b)) 
        nil
        t
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

(defun prime(x)
    (cond ((= 0 (factorsum x)) t )
    )
)

(defun factorsum(x)
    (- (factorsum_helper x 1 0) x)
)
(defun factorsum_helper(x a b)
    (cond   ((= x a) (- b x))
            ((and (= 0 (mod x a)) (null (= x a))) (factorsum_helper x (+ a 1) (+ b x)))
            ((and (null (= 0 (mod x a))) (null (= x a))) (factorsum_helper x (+ a 1) b))
    )
)

(defun perfectp(x)
    (cond ((= x (factorsum x)) t))
)
(defun abundantp(x)
    (cond ((< x (factorsum x)) t))
)
(defun deficientp(x)
    (cond ((= x (factorsum x)) t))
)
(defun p()
    (princ "Welcome to my Project.")
    (finish-output)
    (princ "I completed all the assignments and labelled the sections: ")
    (finish-output)
    (format t "~&~a" "1 for list")
    (finish-output)
    (format t "~&~a" "2 for sets")
    (finish-output)
    (format t "~&~a" "3 for maths")
    (finish-output)
    (format t "~&~a" "4 for required functions")
    (finish-output)
    (format t "~&~a" "Please enter a number for the session you want to work on: ")
    (finish-output)

    (setq section (read))
    
    (cond   ((= 1 section) (lists))
            ((= 2 section) (sets))
            ((= 3 section) (maths))
            ((= 4 section) (required))
    )
)

(defun lists() 
    (princ "You are in lists: Choose any of the list functions from 1 to 10: ")    
    (finish-output)
    (setq l (read))
    (cond   ((= 1 l) (append_start))
            ((= 2 l) (reverse_start))
            ((= 8 l) (addtoend_start))
            ((= 9 l) (indexof_start))
            ((= 10 l) (remove_start))
    )
)

(defun sets() 
    (princ "You are in lists: Choose any of the list functions from 1 to 4: ")    
    (finish-output)
    (format t "~&~a" "1 for member")
    (finish-output)
    (format t "~&~a" "2 for insert")
    (finish-output)
    (format t "~&~a" "3 for union")
    (finish-output)
    (format t "~&~a" "4 for cardinality")
    (finish-output)
    (format t "~&~a" "Please enter a number for the function you want to work on: ")
    (finish-output)
    (setq l (read))
    (cond   ((= 1 l) (member_start))
            ((= 2 l) (insert_start))
            ((= 3 l) (union_start))
            ((= 4 l) (cardinality_start))
    )
)


(defun maths() 
    (princ "You are in Maths: Choose any of the list functions from 1 to 4: ")    
    (finish-output)
    (format t "~&~a" "1 for abs")
    (finish-output)
    (format t "~&~a" "2 for factorial")
    (finish-output)
    (format t "~&~a" "3 for right-tri")
    (finish-output)
    (format t "~&~a" "4 for cardinality")
    (finish-output)
    (format t "~&~a" "Please enter a number for the function you want to work on: ")
    (finish-output)
    (setq l (read))
    (cond   ((= 1 l) (abs_start))
            ((= 2 l) (factorial_start))
            ((= 3 l) (right-tri_start))
            ((= 4 l) (cardinality_start))
    )
)

(defun required() 
    (princ "You are in Maths: Choose any of the list functions from 1 to 4: ")    
    (finish-output)
    (format t "~&~a" "1 for perfectp")
    (finish-output)
    (format t "~&~a" "2 for abundantp")
    (finish-output)
    (format t "~&~a" "3 for right-tri")
    (finish-output)
    (format t "~&~a" "4 for cardinality")
    (finish-output)
    (format t "~&~a" "Please enter a number for the function you want to work on: ")
    (finish-output)
    (setq l (read))
    (cond   ((= 1 l) (perfectp_start))
            ((= 2 l) (abundantp_start))
            ((= 3 l) (deficientp_start))
    )
)