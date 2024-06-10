(defsystem "clatrix"
  :version "0.0.1"
  :author "Giovanni Crisalfi"
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "clatrix/tests"))))

;; (defsystem "clatrix/tests"
;;   :author "Giovanni Crisalfi"
;;   :license ""
;;   :depends-on ("clatrix"
;;                "rove")
;;   :components ((:module "tests"
;;                 :components
;;                 ((:file "main"))))
;;   :description "Test system for clatrix"
;;   :perform (test-op (op c) (symbol-call :rove :run c)))
