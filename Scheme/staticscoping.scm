(define x 1)
(define (f x) (g 2))
(define (g y) (+ x y))
(f 5)
