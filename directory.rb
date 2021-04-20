
# create and fill student array
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
# create array  for students instead of hardcode
  students = []
# request name
  name = gets.chomp
# so while name is not empty do this
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
# ask for name again
    name  = gets.chomp
  end
  # returns students array
  students
end
# print all students
def print_header
  puts "The students of Villains Academy"
  puts "------------"
end
def print(students)
  students.each do |student|  
  puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end
# print total
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
# actually call for something to happen
students = input_students
print_header
print(students)
print_footer(students)
