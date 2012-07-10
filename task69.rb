class Constant
PI=3.14  
@@r=2
  class << Constant
    def area
    puts"The area is :#{PI*@@r*@@r}"
    end
  end
  def perimeter
  puts"The perimeter is: #{2*PI*@@r}"
  end
end
class Secondclass
 @@r=2
 @@a=0.5
  def semic
  puts"The area of the semicircle: #{@@a*Constant::PI*@@r*@@r}"
  end
end

obj=Constant.new
obj2=Secondclass.new
Constant.area
obj.perimeter
obj2.semic


