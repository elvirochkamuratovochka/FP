;15 задача  Определите функцию, вычисляющую скалярное произведение векторов, заданных списками целых чисел.
(defun scal-prod (lst1 lst2)
 ( if(or(null lst1)(null lst2)) 0
 (+(*(car lst1) (car lst2)) (scal-prod (cdr lst1) (cdr lst2)))))

(print(scal-prod '(3  4  2 ) '( 3  4  2)))
(print(scal-prod '(0 ) ' (3  4  2))) 


; № 3 Определите функцию, заменяющую в исходном списке все вхождения заданного значения другим

(defun replac (x repEl list)
   (cond ((null list) nil)
         ((equal (car list) repEl) (cons x (replac x repEl (cdr list))))
         ((cons (car list) (replac x repEl (cdr list))))
    )
)
 
(print(replac 6 1 '(1 2 3 4 5 6 6)))