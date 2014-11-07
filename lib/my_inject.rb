class Array

 def my_inject() 
  first = self[0]
  second = self[1] 
  yield(first, second)
 end
 
end