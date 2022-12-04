;;;; Web service main execution file.

(in-package :cl-user)
(defpackage cl-ws-start-project/ws-main
  (:use :cl)
  ;(:import-from :cl-ws-start-project/foo :hello-world)
  ;(:import-from :cl-ws-start-project/style :+golden-ratio+)
  ;(:import-from :cl-ws-start-project/lesson :show-math)
  ;(:export :show-math)
  (:export :main-fun))
(in-package :cl-ws-start-project/ws-main)

(defun main-fun ()
  (format t "Starting CL WS~%"))
