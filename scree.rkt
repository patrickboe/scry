#lang racket

(require (for-syntax "scry.rkt"))

(define-syntax littered
  (lambda (stx)
    (litter-with-printfs (cadr (syntax->list stx)))))

(define a "hi")
(littered (string-append a "lo"))
