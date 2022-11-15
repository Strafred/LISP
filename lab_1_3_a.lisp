(defun find-atoms-rec(l searched-atom &optional (pos 1) positions-list)
	(cond ((not (null l)) 
		  		(cond ((equal searched-atom (car l))
		 				(setq positions-list (append positions-list (list pos)))))
		  		(find-atoms-rec (cdr l) searched-atom (+ pos 1) positions-list))
		  (t positions-list)))


(defvar list '(1 2 T a 4 3 a (a)))
(defvar searched-atom 'a)
(write (find-atoms-rec list searched-atom))