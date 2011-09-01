; nil/falsy
nil
; nil
'nil
; nil
()
; nil
'()
; nil

; globals
(defparameter *name* 'value)

; cons
(cons 'a ())
; (a)
(cons 'a 'b)
; a. b
(cons 'a '(b))
; (a b)

; car/cdr
(car '(a b c))
; a
(cdr '(a b c))
; (b c)
(cadr '(a b c d))
; b
(cdar '((a b c) d))
; (b c)
(caaar '(((a b c) d) e))
; a
(caadr '(a (b c d e))
; b
(cadar '((a b c) d e))
; b
(cdaar '(((a b c) d) e))
; a
(caddr '(a b c d))
; c
(cdadr '(a (b c) d e))
; c
(cddar '((a b c d) e))
; (c d)
(cdddr '(a b c d e))
; (d e)
(car (cdr '(a b c d)))
; b
(list 'a 'b 'c)
; (a b c)
;
; quasiquoting
(defparameter *letters* '(a b c))
`(letter ,(car *letters*) letter ,(cadr *letters*) letter ,(caddr *letters*))
