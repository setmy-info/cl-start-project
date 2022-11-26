(in-package :cl-user)
(defpackage cl-start-project/tests/main
  (:use :cl
        :rove)
        (:import-from :cl-start-project/foo :hello-world))
(in-package :cl-start-project/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :cl-start-project)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (hello-world)
    (ok (= 1 1))))
