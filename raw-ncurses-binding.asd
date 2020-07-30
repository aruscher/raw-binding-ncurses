(asdf:defsystem #:raw-ncurses-binding
  :description "Describe raw-ncurses-binding here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :defsystem-depends-on ("cffi-grovel")
  :depends-on (:cffi)
  :pathname "src"
  :components ((:file "package")
               (:file "load-library")
               (:cffi-grovel-file "grovel-types")
               (:cffi-grovel-file "grovel-constants")
               (:file "types")
               (:file "interface")))
