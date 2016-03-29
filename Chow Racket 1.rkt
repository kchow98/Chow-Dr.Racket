;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HwForMarch4th) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Function 0: Convert a temperature from farenheit to celcius
;; to-celcius : number -> number
;; Input: a number, temperature
;; Output: temperature, converted to celcius 
;; Test cases for to-celcius
(define (to-celcius f) (/ (- f 32) 1.8))
(check-expect (to-celcius 32) 0)
(check-expect (to-celcius 86) 30)
(check-expect (to-celcius 5) -15)

;; Function 1: Determine if a given year is a leap year (refer to this).
;; is-leap-year : number -> boolean
;; Input: a non-negative number, year
;; Output: boolean value representing whether year is a leap year
;; Test cases for is-leap-year
(define (is-leap-year x)
   (if (= (remainder x 4) 0)
       (if (> (remainder x 100) 0) true
           (if (= (remainder x 400) 0) true false) )
       false))
(check-expect (is-leap-year 2016) true)
(check-expect (is-leap-year 2000) true)
(check-expect (is-leap-year 2015) false)
(check-expect (is-leap-year 1900) false)
(check-expect (is-leap-year 1700) false)

;; Function 2: Output a string to represent a countdown from some value
;; countdown : number -> String
;; Input: a non-negative number, n
;; Output: string value that counts down from n to 0, where 0 is represented
;; by Blastoff!

(define (countdown n)
  (cond
  [(<= n 0) "Blastoff!"]
  [else (string-append
         (number->string n) " " (countdown (- n 1)))]))
  

;; Test cases for countdown
(check-expect (countdown 10) "10 9 8 7 6 5 4 3 2 1 Blastoff!")
(check-expect (countdown 2) "2 1 Blastoff!")
(check-expect (countdown 0) "Blastoff!")
(check-expect (countdown -3) "Blastoff!")

;;***HINTS*** You have access to the following functions:

;; number->string n ;Turns n into a string
;; string-append word1, word2, ... ;appends all strings into 1 string









