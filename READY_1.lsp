


;18/Определите предикат, проверяющий, является ли аргумент одноуровневым
;списком.
(defun is_linear (lst)
	(cond
		((null lst) T)
		((atom (car lst)) (is_linear(cdr lst)))
		(T nil)))

(print (is_linear `(1 2 2 5)))
(print (is_linear `(1 (2 3) 5)))
;Задача 9  Определите функцию, раздляющую список на 2 списка. С четными номерами и нечетными.


(defun str (ls)
               ((lambda (el-cddr) 
                (cond ((null (car ls)) ls)
                    (t 
                        (list
                            (cons (car ls) (car(str el-cddr)))
                            (cons (cadr ls) (car(str el-cddr)))
                        )
                    )
                ) ) (cddr ls) )
)

(print (str '(1 7 6 4 53 6 11 67)))
(print (str '(h e l l o)))
(print (str `(a b c d e f g)))
;Задача 3 Определите функцию, заменяющую в исходном списке все вхождения заданного значения другими
(defun replac (x repEl lst) 
   (
    (lambda (el-car el-cdr) 
      (cond ((null lst) nil)
         ((equal el-car repEl) (cons x (replac x repEl el-cdr)))
         ((cons el-car (replac x repEl el-cdr)))
      ) 
    ) (car lst) (cdr lst)
   ) 
)
 
(print(replac 4 1 '(1 2 3 4 5 6 1 1)))
;45. Напишите функцию (РАССТОЯНИЕ c1 c2), вычисляющую расстояние между городами.

;15 задача  Определите функцию, вычисляющую скалярное произведение векторов, заданных списками целых чисел.
;задача 12 Определите функцию, заменяющую в исходном списке два подряд идущих одинаковых элемента одним.
