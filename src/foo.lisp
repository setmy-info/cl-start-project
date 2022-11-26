;;;; Just simple Hello world function example.

(in-package :cl-user)
(defpackage cl-start-project/foo
  (:use :cl)
  (:export :hello-world))
(in-package :cl-start-project/foo)

(defun hello-world ()
  (format t "Hello, world~1%"))
