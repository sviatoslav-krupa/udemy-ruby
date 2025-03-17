:age.class      #=> Symbol
:age.to_s       #=> "age"
:age.to_s.class #=> String

"age".class         #=> String
"age".to_sym        #=> :age
"age".to_sym.class  #=> Symbol

# Edge cases (generally avoided):
"School bus".to_sym                                 #=> :"School bus"
"School bus".to_sym.class                           #=> Symbol
:"School bus".object_id == :"School bus".object_id  #=> true
