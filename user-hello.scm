; user-hello.scm

(define (hello name)
  (display "Hello, ")
  (display name)
  (display "\n")
  )

; run using ./user-hello <name> where <name> is your name
(if (< (length (argv)) 2)
  (begin
    (display "Usage: ")
    (display (list-ref (argv) 0))
    (display " <name>\nWhere <name> is your name\n")
    (exit 1)
    )
  (hello (list-ref (argv) 1))
)

