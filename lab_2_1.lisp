(defun make-linear(x)
	(cond ((null x) nil)
		  ((atom (car x)) (cons (car x) (make-linear (cdr x))))
	 	  ((listp (car x)) (append (make-linear (car x)) (make-linear (cdr x))))))

(defun size-rec(l &optional (counter 0))
	(cond ((not (null l)) (size-rec (cdr l) (+ counter 1)))
		  (t counter)))

(defun count-atoms(l)
	(size-rec (make-linear l)))


(defvar list '((2 T) a (0 ((1 2 3) 4)) a (b)))
(write (count-atoms list))