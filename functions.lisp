; mapcar
(mapcar #'sqrt '(1 4 9))
; 1 2 3
(mapcar #'car '((1 2) (3 4) (5 6)))
; 1 3 5

(defparameter *keys* '((key1 (value 1)) (key2 (value 2)))

; assoc
(assoc 'key1 *keys*)
; (key1 (value 1))

; append
(append '(a b c) '(d e))
; a b c d e

; apply
(apply #'append '((a b c) (d e)))
; a b c d e

; quasiquoting
(defparameter *letters* '(a b c))
`(letter ,(car *letters*) letter ,(cadr *letters*) letter ,(caddr *letters*))
