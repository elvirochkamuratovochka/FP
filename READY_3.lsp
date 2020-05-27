; 1. Определите макрос, который возвращает свой вызов

(defmacro macro (x)
   `'(macro ,x)
)

(print (macro (1 2 3)))
;3. Определите лисповскую форму (IF условие p q) в виде макроса.

(defmacro iff (condition then else)
   `(cond 
           (,condition ,then)
           (t ,else)
    )
)
 
(print(iff (= 15 15) 'p 'q)) ; P
(print(iff (> 2 3) 'p 'q)) ; Q
