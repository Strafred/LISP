(defun find-atoms-rec(l searched-atom &optional (pos 1))
	(cond ((not (null l)) 
		  		(cond ((equal searched-atom (car l))
		 				(return-from find-atoms-rec pos)))
		  		(find-atoms-rec (cdr l) searched-atom (+ pos 1)))
		  (t nil)))


(defvar list '(1 2 T 4 3 a a (a)))
(defvar searched-atom 'a)
(write (find-atoms-rec list searched-atom))