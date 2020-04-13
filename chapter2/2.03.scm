#| Exercise 2.3.  Implement a representation for rectangles in a plane. 
(Hint: You may want to make use of exercise 2.2.) In terms of your constructors and 
selectors, create procedures that compute the perimeter and the area of a given rectangle. 
Now implement a different representation for rectangles. Can you design your system with 
suitable abstraction barriers, so that the same perimeter and area procedures will work 
using either representation?
|#

#| WORK IN PROGRESS: NOT DONE |#

(define (make-segment starting-point ending-point)
  (cons starting-point ending-point)
)

(define (make-point x-point y-point)
  (cons x-point y-point)
)

(define (start-segment segment)
  (car segment)
)

(define (end-segment segment)
  (cdr segment)
)

(define (x-point point)
  (car point)
)

(define (y-point point)
  (cdr point)
)

#|  
  What are the conditions needed for creating a rectangle?
  - 2 x 2 sides of the same length 
  - 2 sides need have to be on the same x axis
  - The other 2 sides have to be on the same y axis
  - Ex:
  - Given 2 Xs 2 Ys
  - {2 . 0} - starting point 1
  - {2 . 10} -ending point 1
  - {4 . 0} - starting point 1 
  - {4 . 10} -ending point 1
|#

#| WORK IN PROGRESS: NOT DONE |#

