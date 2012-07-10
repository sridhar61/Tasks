class Squareprgrm 
  def square(a) #Method passing the paramter
  @num=a
  b=a*a
  puts"The square of the given element is :#{b}"
  end
  def square_root() #Another method having no parameters passed in it.
  a=Math.sqrt(@num)
  puts"The squareroot of the given element is :#{a}"
  end
  
end

s=Squareprgrm.new()
s.square(25) # passing arguments for the method square
s.square_root()
