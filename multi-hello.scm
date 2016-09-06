; multi-hello.scm

(define (hello x)
  (display "Hello, World\n")
  (set! x (- x 1))
  (if (or (= x 0 ) (< x 0))
    (exit 0)
    (hello x)
    )
  )

; run using ./multi-hello N where N is an integer > 0
(if (< (length (argv)) 2)
  (begin
    (display "Usage: ")
    (display (list-ref (argv) 0))
    (display " <N>\nWhere <N> is an integer > 0\n")
    (exit 1)
    )
  (hello (string->number (list-ref (argv) 1)))
)

