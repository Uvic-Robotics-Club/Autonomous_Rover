;; Auto-generated. Do not edit!


(when (boundp 'drivetrain::Speed)
  (if (not (find-package "DRIVETRAIN"))
    (make-package "DRIVETRAIN"))
  (shadow 'Speed (find-package "DRIVETRAIN")))
(unless (find-package "DRIVETRAIN::SPEED")
  (make-package "DRIVETRAIN::SPEED"))

(in-package "ROS")
;;//! \htmlinclude Speed.msg.html


(defclass drivetrain::Speed
  :super ros::object
  :slots (_leftspeed _rightspeed _leftdirection _rightdirection ))

(defmethod drivetrain::Speed
  (:init
   (&key
    ((:leftspeed __leftspeed) 0)
    ((:rightspeed __rightspeed) 0)
    ((:leftdirection __leftdirection) 0)
    ((:rightdirection __rightdirection) 0)
    )
   (send-super :init)
   (setq _leftspeed (round __leftspeed))
   (setq _rightspeed (round __rightspeed))
   (setq _leftdirection (round __leftdirection))
   (setq _rightdirection (round __rightdirection))
   self)
  (:leftspeed
   (&optional __leftspeed)
   (if __leftspeed (setq _leftspeed __leftspeed)) _leftspeed)
  (:rightspeed
   (&optional __rightspeed)
   (if __rightspeed (setq _rightspeed __rightspeed)) _rightspeed)
  (:leftdirection
   (&optional __leftdirection)
   (if __leftdirection (setq _leftdirection __leftdirection)) _leftdirection)
  (:rightdirection
   (&optional __rightdirection)
   (if __rightdirection (setq _rightdirection __rightdirection)) _rightdirection)
  (:serialization-length
   ()
   (+
    ;; int64 _leftspeed
    8
    ;; int64 _rightspeed
    8
    ;; int64 _leftdirection
    8
    ;; int64 _rightdirection
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _leftspeed
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _leftspeed (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _leftspeed) (= (length (_leftspeed . bv)) 2)) ;; bignum
              (write-long (ash (elt (_leftspeed . bv) 0) 0) s)
              (write-long (ash (elt (_leftspeed . bv) 1) -1) s))
             ((and (class _leftspeed) (= (length (_leftspeed . bv)) 1)) ;; big1
              (write-long (elt (_leftspeed . bv) 0) s)
              (write-long (if (>= _leftspeed 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _leftspeed s)(write-long (if (>= _leftspeed 0) 0 #xffffffff) s)))
     ;; int64 _rightspeed
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rightspeed (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rightspeed) (= (length (_rightspeed . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rightspeed . bv) 0) 0) s)
              (write-long (ash (elt (_rightspeed . bv) 1) -1) s))
             ((and (class _rightspeed) (= (length (_rightspeed . bv)) 1)) ;; big1
              (write-long (elt (_rightspeed . bv) 0) s)
              (write-long (if (>= _rightspeed 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rightspeed s)(write-long (if (>= _rightspeed 0) 0 #xffffffff) s)))
     ;; int64 _leftdirection
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _leftdirection (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _leftdirection) (= (length (_leftdirection . bv)) 2)) ;; bignum
              (write-long (ash (elt (_leftdirection . bv) 0) 0) s)
              (write-long (ash (elt (_leftdirection . bv) 1) -1) s))
             ((and (class _leftdirection) (= (length (_leftdirection . bv)) 1)) ;; big1
              (write-long (elt (_leftdirection . bv) 0) s)
              (write-long (if (>= _leftdirection 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _leftdirection s)(write-long (if (>= _leftdirection 0) 0 #xffffffff) s)))
     ;; int64 _rightdirection
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _rightdirection (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _rightdirection) (= (length (_rightdirection . bv)) 2)) ;; bignum
              (write-long (ash (elt (_rightdirection . bv) 0) 0) s)
              (write-long (ash (elt (_rightdirection . bv) 1) -1) s))
             ((and (class _rightdirection) (= (length (_rightdirection . bv)) 1)) ;; big1
              (write-long (elt (_rightdirection . bv) 0) s)
              (write-long (if (>= _rightdirection 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _rightdirection s)(write-long (if (>= _rightdirection 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _leftspeed
#+(or :alpha :irix6 :x86_64)
      (setf _leftspeed (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _leftspeed (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rightspeed
#+(or :alpha :irix6 :x86_64)
      (setf _rightspeed (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rightspeed (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _leftdirection
#+(or :alpha :irix6 :x86_64)
      (setf _leftdirection (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _leftdirection (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _rightdirection
#+(or :alpha :irix6 :x86_64)
      (setf _rightdirection (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _rightdirection (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get drivetrain::Speed :md5sum-) "e411503b1c3b7e55df6f17adf4515654")
(setf (get drivetrain::Speed :datatype-) "drivetrain/Speed")
(setf (get drivetrain::Speed :definition-)
      "int64 leftspeed
int64 rightspeed
int64 leftdirection
int64 rightdirection
")



(provide :drivetrain/Speed "e411503b1c3b7e55df6f17adf4515654")


