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
  (format t "Starting CL WS~%")
  (defvar *acceptor*)
  (setq *acceptor* (make-instance 'hunchentoot:easy-acceptor :port 4242))

  (hunchentoot:define-easy-handler (say-yo :uri "/yo") (name)
    (setf (hunchentoot:content-type*) "text/plain")
    (format nil "Hey~@[ ~A~]!" name))

  (hunchentoot:start *acceptor*))
