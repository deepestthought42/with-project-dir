;;;; with-project-dir.asd

(asdf:defsystem #:with-project-dir
  :description "Describe with-project-dir here"
  :author "Your Name <your.name@example.com>"
  :license "Specify license here"
  :depends-on (#:iterate
               #:alexandria
		#:cl-fad)
  :serial t
  :components ((:file "package")
               (:file "with-project-dir")))

