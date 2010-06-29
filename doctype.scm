;; Some XHTML and HTML doctypes, as strings
;; Author: Zbigniew
;; License: Public domain

;; see also http://htmlhelp.com/tools/validator/doctype.html

(module doctype
  (html-4.01-strict
   xhtml-1.0-strict
   html-4.01-transitional
   xhtml-1.0-transitional
   html-4.01-frameset
   xhtml-1.0-frameset
   html-3.2
   html-2.0
   doctype-rules)

(import scheme data-structures)

(define html-4.01-strict
  "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">")
(define xhtml-1.0-strict
  "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">")
(define html-4.01-transitional
  "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">")
(define xhtml-1.0-transitional
  "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">")
(define html-4.01-frameset
  "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Frameset//EN\" \"http://www.w3.org/TR/html4/frameset.dtd\">")
(define xhtml-1.0-frameset
  "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Frameset//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\">")
(define html-3.2
  "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 3.2 Final//EN\">")
(define html-2.0
  "<!DOCTYPE HTML PUBLIC \"-//IETF//DTD HTML//EN\">")

(define doctype-rules
  `((html-4.01-strict *preorder* . ,(constantly html-4.01-strict))
    (xhtml-1.0-strict *preorder* . ,(constantly xhtml-1.0-strict))
    (html-4.01-transitional *preorder* . ,(constantly html-4.01-transitional))
    (xhtml-1.0-transitional *preorder* . ,(constantly xhtml-1.0-transitional))
    (html-4.01-frameset *preorder* . ,(constantly html-4.01-frameset))
    (xhtml-1.0-frameset *preorder* . ,(constantly xhtml-1.0-frameset))
    (html-3.2 *preorder* . ,(constantly html-3.2))
    (html-2.0 *preorder* . ,(constantly html-3.2))))
)
