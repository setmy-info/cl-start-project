; Main system definition
(defsystem "cl-ws-start-project"
  :version "0.0.0"
  :author "Imre Tabur <info@setmy.info>"
  :maintainer "Imre Tabur <info@setmy.info>"
  :homepage "https://setmy-info.github.io/src/site/markdown/lisp.html"
  :license "MIT"
  :depends-on ("hunchentoot" "postmodern")
  :components ((:module "src"
                :components
                (
                  ;(:file "foo")
                  ;(:file "lesson")
                  ;(:file "style")
                  ;(:file "ws-main" :depends-on ("style" "lesson" "foo"))
                  (:file "ws-main")
                )))
  :build-operation "program-op" ;; leave as is
  :build-pathname "cl-ws-start-project.bin"
  :entry-point "cl-ws-start-project/ws-main:main-fun"
  :description "A sample Lisp system(project)."
  :in-order-to ((test-op (test-op "cl-ws-start-project/tests"))))

; Testing system definition
(defsystem "cl-ws-start-project/tests"
  :author "imret"
  :license "MIT"
  :depends-on ("cl-ws-start-project"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for cl-ws-start-project"
  :perform (test-op (op c) (symbol-call :rove :run c)))
