class Instanc
  def initialize(a,b)
  @num1=a
  @num=b
  end
  def fixnum
  c=@num+@num1
  puts"The addition value of c is :#{c}"
  end
  def string
  x="hello"
  y="hai"
  z=x+y
  puts"The concatenation of z is :#{z}"
  end
end
  
obj=Instanc.new(1,2)
obj.fixnum
obj.string
  
