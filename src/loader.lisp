;;;; quicklisp and ASDF loader and execution file.

(pushnew (truename "../") ql:*local-project-directories* )
(ql:register-local-projects)
(ql:quickload :cl-start-project)

(cl-start-project/main:main-fun)
(quit)
