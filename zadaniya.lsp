(defun scal-prod (lst1 lst2)
 ( if(or(null lst1)(null lst2)) 0
 (+(*(car lst1) (car lst2)) (scal-prod (cdr lst1) (cdr lst2)))))

(print(scal-prod '(3  4  2 ) '( 3  4  2)))
(print(scal-prod '(0 ) ' (3  4  2)))