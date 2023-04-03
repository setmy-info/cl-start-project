;;;; Compiling script.

(in-package :cl-user)
(defpackage cl-start-project/style
  (:use :cl))
(in-package :cl-start-project/style)

(compile-file "tests/hello.lisp")
