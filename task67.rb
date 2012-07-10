class Student
   @@no_of_students=0
   def initialize(id, name, addr)
      @std_id=id
      @std_name=name
      @std_addr=addr
   end
   def display_details()
      puts "Student id #@std_id"
      puts "Student name #@std_name"
      puts "Student address #@std_addr"
    end
    def totalstudents()
       @@no_of_students += 1
       puts "Total number of students: #@@no_of_students"
    end
end

# Create Objects
std1=Student.new("1", "sid", "susarla colony vizag")
std2=Student.new("2", "Sri", "kachiguda hydrebad")

# Call Methods
std1.totalstudents()
std2.totalstudents()
