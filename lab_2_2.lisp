(defun rec-find(el list-og &optional list-res (pos 1) el-entries-list)
	(setq current (car list-og))

	(cond ((equal current el)
				(setq el-entries-list (append el-entries-list (list (append list-res (list pos))))))
		  ((and (listp current) (not (null current)))
		  		(setq el-entries-list (rec-find el current (append list-res (list pos)) 1 el-entries-list))))

	(cond ((not (null (cdr list-og)))
				(setq el-entries-list (rec-find el (cdr list-og) list-res (+ pos 1) el-entries-list)))
		  (t el-entries-list)))


(defvar list '((3 2) (3 t) (4 (1 b 3 4)) a 2 (b) nil))
(write (rec-find 3 list))