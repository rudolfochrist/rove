(in-package #:cl-user)
(defpackage #:rove/main
  (:nicknames #:rove)
  (:use #:cl)
  (:import-from #:rove/core/assertion
                #:ok
                #:ng
                #:pass
                #:fail)
  (:import-from #:rove/core/test
                #:deftest)
  (:import-from #:rove/core/suite
                #:run-system-tests)
  (:import-from #:rove/reporter
                #:with-reporter
                #:*report-stream*)
  (:import-from #:rove/reporter/color
                #:*enable-colors*)
  (:import-from #:rove/reporter/style/spec
                #:spec-reporter)
  (:export #:ok
           #:ng
           #:pass
           #:fail
           #:deftest
           #:run

           #:with-reporter
           #:*report-stream*
           #:*enable-colors*))
(in-package #:rove/main)

(defun run (target)
  (with-reporter :spec
    (run-system-tests target)))
