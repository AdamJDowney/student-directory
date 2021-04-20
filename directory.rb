# list of students first
students = [ 
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Racthed",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Kreuger",
  "The Joker",
  "Joffery Baratheon", 
  "Norman Bates"
]
# print all students
def print_header
  puts "The students of Villains Academy"
  puts "------------"
end
def print(names)
  names.each do |name|  
  puts name
  end
end
# print total
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
# actually call for something to happen
print_header
print(students)
print_footer(students)
