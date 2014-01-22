#lang racket/base

(require "scry.rkt")

(parameterize ([current-namespace (make-base-namespace)])
 (eval-syntax
   (litter-with-printfs
     (expand-syntax
       (expand-syntax-to-top-form
         (namespace-syntax-introduce
           (datum->syntax #f '(let [(a "bees")] (string-append a "b")))))))))
