class Arthematicoperation
  def initialize(a)
  @num=a #here is the instance varaible
  end
  def mul
  b=@num*@num #Declaring the same instance in first method
  puts"The multiplication of the element is: #{b}"
  end
  def add
  c=@num+@num #Declaring the same instance in second method
  puts"The addition of the element is: #{c}"
  end
end

obj=Arthematicoperation.new(5)
obj.mul
obj.add
