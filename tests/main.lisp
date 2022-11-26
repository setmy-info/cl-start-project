(defpackage cl-start-project/tests/main
  (:use :cl
        :cl-start-project
        :rove))
(in-package :cl-start-project/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :cl-start-project)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
