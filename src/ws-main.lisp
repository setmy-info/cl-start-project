;;;; Web service main execution file.

(in-package :cl-user)
(defpackage cl-ws-start-project/ws-main
  (:use :cl)
  (:export :main))
(in-package :cl-ws-start-project/ws-main)

(defun main ()
  (format t "Starting CL WS~%")
  (defvar *acceptor*)
  (setq *acceptor* (make-instance 'hunchentoot:easy-acceptor :port 4242))

  ;; http://localhost:4242/yo?name=Imre
  (hunchentoot:define-easy-handler (say-yo :uri "/yo") (name)
    (setf (hunchentoot:content-type*) "text/plain")
    (format nil "Hey~@[ ~A~]!" name))

  ;; http://localhost:4242/hello.html
  (defun hello ()
    (format nil "Hello, it works!"))

  (push
    (hunchentoot:create-prefix-dispatcher "/hello.html" 'hello) 
    hunchentoot:*dispatch-table*)

  (hunchentoot:start *acceptor*))
