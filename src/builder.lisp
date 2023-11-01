; Load main system
(asdf:already-loaded-systems)
(pushnew (truename "./") ql:*local-project-directories*)
;(require "cl-start-project")
(ql:quickload :cl-start-project)
(asdf:already-loaded-systems)

; Load tests system
(ql:quickload :rove)
;(require "cl-start-project/tests")
(ql:quickload :cl-start-project/tests)
(asdf:already-loaded-systems)

; Run tests
(rove:run :cl-start-project/tests)

; Make executable
(asdf:make :cl-start-project)
