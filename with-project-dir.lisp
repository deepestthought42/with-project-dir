;;;; with-project-dir.lisp

(in-package #:with-project-dir)

;;; "with-project-dir" goes here. Hacks and glory await!



(defun %get-visible-directories (directory)
  (remove-if #'(lambda (d)
		 (or (not (cl-fad:directory-pathname-p d))
		     (search "/." (directory-namestring d))))
	     (cl-fad:list-directory directory)))


(defmacro with-project-dir ((directory) &body body)
  (alexandria:once-only (directory)
    `(if (not (cl-fad:directory-exists-p ,directory))
	 (error "Couldn't find directory: ~a" ,directory)
	 (let ((asdf:*central-registry* (%get-visible-directories ,directory)))
	   ,@body))))






