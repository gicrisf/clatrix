(defpackage clatrix
  (:use :cl))

(in-package :clatrix)

(defclass matrix ()
  ((rows :accessor matrix-rows
         :initarg :rows
         :initform (error "we need rows, dude"))
   (A :accessor get-A
      :initarg :A)
   (b :accessor get-b
      :initarg :b)))

(defmethod initialize-instance :after ((matrix matrix) &key)
  (with-accessors ((matrix-rows matrix-rows)) matrix
    (setf (slot-value matrix 'A)
          (mapcar (lambda (x) (car x)) matrix-rows))
    (setf (slot-value matrix 'b)
          (mapcar (lambda (x) (cadr x)) matrix-rows))))

(defmacro make-matrix (rows)
  `(progn (make-instance 'matrix :rows ,rows)))

(defmacro with-matrix (rows &rest body)
  `(let ((this-matrix (make-instance 'matrix :rows ,rows)))
     (progn ,@body)))

(defmacro letrix (bindings &rest body)
  (let ((new-bindings
          (mapcar (lambda (x) (list (car x)
                          `(make-instance 'matrix :rows ,(cadr x))))
                       bindings)))
    `(let ,new-bindings ,@body)))
