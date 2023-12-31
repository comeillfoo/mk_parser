#lang br
(require "lexer.rkt" brag/support)

(define (make-tokenizer ip [path #f])
    (port-count-lines! ip)
    (lexer-file-path path)
    (define (next-token) (mk-lexer ip))
    next-token)

(provide make-tokenizer)
