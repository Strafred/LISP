(defun size-rec(l &optional (counter 0))
	(cond ((not (null l)) (size-rec (cdr l) (+ counter 1)))
		  (t counter)))


(defvar list '(1 2 3 4 '(a) 6 b c 9 10))
(write (size-rec list))