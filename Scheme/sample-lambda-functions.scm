#lang racket

(define decr (λ (x) (- x 1)))



(define incr (λ (x) (+ x 1)))



(define list-length (λ (lst)
                      (if (null? lst)                         ; our base case to see if its an empty list
                          0
                          (+ 1 (list-length (cdr lst))))))    ; we know it isnt empty so we can increment and  send the tail of the list back



(define sum-list (λ (lst)
                     (if (= 0 (list-length lst))            ; we can use our list length function to see if we have reached the end
                         0
                         (+ (car lst) (sum-list (cdr lst))))))      ; send the tail of the function back into the function and add it to the beginning of the original list



(define prod-list (λ (lst)
                     (if (= 0 (list-length lst))            
                         1
                         (* (car lst) (prod-list (cdr lst)))))) 



(define factorial (λ (n)                             ; recursive function name
                    (if (= n 1)                           ; base case check
                        1                                 ; base case return value, our satisfied if
                        (* n (factorial (- n 1))))))      ; our else condition



(define fibonnacci (λ (n)
                (if (= 0 n)
                    0
                (if (= 1 n)
                    1
                    (+ (fibonnacci (- n 2)) (fibonnacci (- n 1)))))))