#lang racket

(define grid ((0 0 0 0 0)
              (0 0 0 0 0)
              (0 0 0 0 0)
              (0 0 0 0 0)
              (0 0 0 0 0)))

(define set-grid (lambda (grid r c v) ; grid, row, column, value
                   (if (= r 0)
                       (cons (set-row (car grid) c v) (cdr grid))
                       (cons (car grid) (set-grid (cdr grid) (- r 1) c v)))))