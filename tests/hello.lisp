;;;; Hello, World example progrm. As examnple, tutorial and lesson. Not for compiling into main
;;;; code.

(in-package :cl-user)
(defpackage cl-start-project/style
  (:use :cl))
(in-package :cl-start-project/style)

(format t "Hello, World~%")
