(defpackage clatrix/tests/main
  (:use :cl
        :clatrix
        :rove))
(in-package :clatrix/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :clatrix)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
