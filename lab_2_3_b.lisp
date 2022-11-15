(defun rec-find(enter-element search-element right-list &optional (found nil) (left-list '()))
	(setq current (car right-list))

	(cond ((equal current search-element)
				(setq left-list (append left-list (list enter-element)))
		 		(setq found T))
		  ((and (listp current))
				(setq current (rec-find enter-element search-element current found))
				(cond ((not (equal current (car right-list)))
							(setq right-list (append (list current) (cdr right-list)))
							(setq found T)))))

	(setq left-list (append left-list (list (car right-list))))
	(setq right-list (cdr right-list))

	(cond ((and (not (null right-list)) (null found))
				(rec-find enter-element search-element right-list found left-list))
		  (t (append left-list right-list))))


(defvar list '((3) (3 t) (4 (1 b 2 4)) a (b)))
(write (rec-find 'two '(3 t) list))