#| Exercise 2.2.  Consider the problem of representing line segments in a plane. 
Each segment is represented as a pair of points: a starting point 
and an ending point. Define a constructor make-segment and selectors start-segment 
and end-segment that define the representation of segments in terms of points. 
Furthermore, a point can be represented as a pair of numbers: the x coordinate 
and the y coordinate. Accordingly, specify a constructor make-point and selectors
 x-point and y-point that define this representation. Finally, using your selectors 
 and constructors, define a procedure midpoint-segment that takes a line segment as 
 argument and returns its midpoint (the point whose coordinates are the average of the 
coordinates of the endpoints). To try your procedures, you'll need a way to print points:
|#

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

(define (midpoint-segment line-segment)
  (make-point 
      (/ (+ (x-point (start-segment line-segment)) (x-point (end-segment line-segment))) 2)
      (/ (+ (y-point (start-segment line-segment)) (end-segment (y-point line-segment))) 2)
  )
)

(make-point 18 8)
(midpoint-segment (make-segment (make-point 18 8) (make-point 20 10)))
