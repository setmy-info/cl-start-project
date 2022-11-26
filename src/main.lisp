;;;; Application main execution file.

(in-package :cl-user)
(defpackage cl-start-project/main
  (:use :cl)
  (:import-from :cl-start-project/foo :hello-world)
  (:import-from :cl-start-project/style :+golden-ratio+)
  (:import-from :cl-start-project/lesson :show-math)
  ;(:export :show-math)
  (:export :main-fun))
(in-package :cl-start-project/main)

(format t "~%ASDF version: ~a ~1%" (asdf:asdf-version))

(defun main-fun ()
  (hello-world)
  (show-math)
  (format t "Finish~%"))
