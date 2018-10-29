# symbols to strings and vice versa

p :age.class

p :age.to_s # to string object conversion
p :age.to_s.class

p "age"
p "age".class
p "age".to_sym # to symbol object conversion
p "age".to_sym.class

p "School bus".to_sym # still works but appears with double quotes
