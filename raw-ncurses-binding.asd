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
               (:cffi-grovel-file "grovel-types")
               (:cffi-grovel-file "grovel-constants")
               ;;
               (:file "load-library")
               (:file "types")
               (:file "color")
               (:file "interface")))

;; (asdf:defsystem #:raw-ncurses-binding/demo
;;   :description "Describe raw-ncurses-binding here"
;;   :author "Your Name <your.name@example.com>"
;;   :license  "Specify license here"
;;   :version "0.0.1"
;;   :serial t
;;   :depends-on ("raw-ncurses-binding")
;;   :pathname "demo"
;;   :components ((:file "package")
;;                (:file "hello-world")
;;                (:file "hello-world-color")
;;                (:file "worms")))
