(defun reverse-list (l)
	(cond ((null (cdr l)) (list (car l)))
		  (t (append (reverse-list (cdr l)) (list (car l))))))

(defun first-atom (l)
	(cond ((atom (car l)) (car l))
		  (t (first-atom (cdr l)))))

(defun last-atom (l)
	(first-atom (reverse-list list)))


(defvar list '(1 2 3 4 a t (b)))
(write (last-atom list))