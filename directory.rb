# list of students first
students = [ 
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Racthed", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Kreuger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffery Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]
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
print_header
print(students)
print_footer(students)
