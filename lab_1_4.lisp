(defun del-atoms-rec(l del-atoms)
	(cond ((not (null del-atoms))
				(setq l (remove (car del-atoms) l))
				(del-atoms-rec l (cdr del-atoms)))
		  (t l)))


(defvar list '(1 2 T a 4 4 4 4 3 4 4 4 4 4 (b)))
(defvar del-atoms '(T a 4))
(write (del-atoms-rec list del-atoms))