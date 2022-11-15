(defun rec-find(el list-og &optional list-res (pos 1) found)
	(setq current (car list-og))

	(cond ((equal current el)
				(setq found (append list-res (list pos))))
		  ((listp current)
		  		(setq found (rec-find el current (append list-res (list pos)) 1))))

	(cond ((null found)
				(cond ((not (null (cdr list-og)))
					(setq found (rec-find el (cdr list-og) list-res (+ pos 1))))
		  		(t nil)))
		  (t found)))


(defvar list '((1 2) (1 t) (4 (1 b 3 4)) a 2 (b)))
(write (rec-find 3 list))