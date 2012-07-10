$val=53
class Clas
  class << self
  def method_1
  puts"The value in class method is :#{$val}"
  end
  end
end  
class Instanc
  def method_2
  puts"The value in instance method is :#{$val}"
  end
end  
  
obj=Clas.new
Clas.method_1
obj1=Instanc.new
obj1.method_2  
