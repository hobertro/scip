(define (last-pair argument_list)
  (if (null? (cdr argument_list))
    argument_list
    (last-pair (cdr argument_list))
  )
)


(last-pair (list 23 72 149 34))