(setq *print-case* :downcase)

(defun lin(x)
	(cond ((null x) nil)
		  ((atom (car x)) (cons (car x) (lin (cdr x))))
		  ((listp (car x)) (append (lin (car x)) (lin (cdr x))))))

(defvar list '(((1 2) 3) (2 T) cat (4 4 4 4 ((3 4) (4 4 4) 4)) hamster cat (dog)))
(write (lin list))
(terpri)