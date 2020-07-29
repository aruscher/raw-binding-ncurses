(in-package #:binding)

#+(or unicode sb-unicode)
(define-foreign-library libncurses
  (:unix (:or "libncursesw.so.6.2"
              "libncursesw.so.6"
              "libncursesw.so"))
  (:t (:default "libncursesw")))

#-(or unicode sb-unicode)
(define-foreign-library libncurses
  (:unix (:or "libncurses.so.6.2"
              "libncurses.so.6"
              "libncurses.so"))
  (:t (:default "libncurses")))

(cffi:use-foreign-library libncurses)
