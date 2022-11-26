; Main system definition
(defsystem "cl-start-project"
  :version "0.0.0"
  :author "Imre Tabur <info@setmy.info>"
  :maintainer "Imre Tabur <info@setmy.info>"
  :homepage "https://setmy-info.github.io/src/site/markdown/lisp.html"
  :license "MIT"
  :depends-on ("alexandria")
  :components ((:module "src"
                :components
                (
                  (:file "foo")
                  (:file "lesson")
                  (:file "style")
                  (:file "main" :depends-on ("style" "lesson" "foo"))
                )))
  :description "A sample Lisp system(project)."
  :in-order-to ((test-op (test-op "cl-start-project/tests"))))

; Testing system definition
(defsystem "cl-start-project/tests"
  :author "imret"
  :license "MIT"
  :depends-on ("cl-start-project"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for cl-start-project"
  :perform (test-op (op c) (symbol-call :rove :run c)))
