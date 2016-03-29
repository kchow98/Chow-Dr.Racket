#lang racket
;; Function 3: Summation
(define (summation number)
  (cond
    [(< number 1) 0]
    [else (+ number (summation (- number 1)))]))

(summation 4)

;;Function 4: Num Digits
;;num-digits: number -> numbers

(define (num-digits n)
 (cond
   [(< n 10) 1]
   [else (+ 1 (num-digits (quotient n 10)))]))

(num-digits 74874891347190874)



;;Function 5: Create List
;;Create a list of numbers of length size
;;Example (create-list 8)
;; Should return '(87654321)

(define (create-list size)
 (cond
   [(<= size 0) empty]
   [else (cons size (create-list (- size 1)))]))

 (create-list 5)

;;Function 6: Length of list
;Create a function that returns the length of a list
(define (length list)
  (cond
    [(empty? list) 0]
    [else (+ 1 (length (rest list)))]))

(length (create-list 5))

