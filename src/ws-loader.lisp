;;;; quicklisp and ASDF loader and execution file.

(pushnew (truename "../") ql:*local-project-directories* )
(ql:register-local-projects)
(ql:quickload :cl-ws-start-project)

(cl-ws-start-project/ws-main:main-fun)
(quit)
