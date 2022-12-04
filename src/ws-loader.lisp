;;;; quicklisp and ASDF loader and execution file.
;(required "asdf")
;(load "quicklisp")
(asdf:already-loaded-systems)

(pushnew (truename "../") ql:*local-project-directories* )
(ql:register-local-projects)
(ql:quickload :cl-ws-start-project)

(cl-ws-start-project/ws-main:main)
;(quit)
