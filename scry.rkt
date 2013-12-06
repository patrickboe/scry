#lang racket 
(require racket/format gui-debugger/annotator)

(provide litter-with-printfs)

(define (litter-with-printfs stx) 
      (let-values ([(annotated breakmap)
                    (annotate-stx stx
                        (lambda (debug annotated original is-tail?)
                          (printf "BREAK-WRAP call.~ndebug:~n~s~nannotated:~n~s~noriginal:~n~s~nis-tail?~n~s"
                                  debug
                                  annotated
                                  original
                                  is-tail?))
                        (lambda (use-case bound-stx binding-stx)
                          (printf "RECORD-BOUND-ID call.~nuse-case:~n~s~nbound-stx:~n~s~nbinding-stx:~n~s~n"
                                  use-case
                                  bound-stx
                                  binding-stx))
                        (lambda (use-case bound-stx binding-stx)
                          (printf "RECORD-TOP-LEVEL-ID call.~nuse-case:~n~s~nbound-stx:~n~s~nbinding-stx:~n~s~n"
                                  use-case
                                  bound-stx
                                  binding-stx)))])
        annotated))
