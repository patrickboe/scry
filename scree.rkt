#lang racket/base

(require "scry.rkt")

(parameterize ([current-namespace (make-base-namespace)])
 (eval-syntax
   (litter-with-printfs
     (expand '(let [(a "bees")] (string-append a "b"))))))
