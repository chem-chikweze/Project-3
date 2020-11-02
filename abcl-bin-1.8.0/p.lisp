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
    (cond ()

    )

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
    )
    ;; (princ l)
)

(defun sets() 
    (princ "You are in lists: Choose any of the list functions from 1 to 4: ")    
    (finish-output)
    (setq l (read))
    (cond   ((= 1 l) (member_start))
            ((= 2 l) (insert_start))
            ((= 8 l) (union_start))
            ((= 9 l) (indexof_start))
    )
    ;; (princ l)
)



;; (defun AreaOfCircle()
;; (terpri)
;; (princ "Enter Radius: ")
;; (setq radius (read))
;; (setq area (* 3.1416 radius radius))
;; (princ "Area: ")
;; (write area))
;; (AreaOfCircle)

;; (defun project ()
;;   (flet ((prompt (string)
;;            (format t "~&~a: " string)
;;            (finish-output)
;;            (read nil 'eof nil)))
;;     (let ((x (prompt "first number"))
;;           (y (prompt "second number"))
;;           (z (prompt "third number")))
;;       (format t "~&the sum of ~a, ~a, & ~a is:~%~%~a~%"
;;               x y z (+ x y z)))))

