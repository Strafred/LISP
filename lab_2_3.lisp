(defun rec-find(enter-element search-element right-list &optional (left-list '()))
	(setq current (car right-list))

	(cond ((equal current search-element)
				(setq left-list (append left-list (list enter-element))))
		  ((and (listp current))
				(setq current (rec-find enter-element search-element current))
				(setq right-list (append (list current) (cdr right-list)))))

	(setq left-list (append left-list (list (car right-list))))
	(setq right-list (cdr right-list))

	(cond ((not (null right-list))
				(rec-find enter-element search-element right-list left-list))
		  (t left-list)))


(defvar list '((3 2) (3 t) (4 (1 b 2 4)) a 2 (b)))
(write (rec-find 'two '2 list))