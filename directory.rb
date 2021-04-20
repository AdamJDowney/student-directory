# prints lists of students first
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
puts "The students of Villains Academy"
puts "------------"
students.each do |student|
  puts student
end
# print total
print "Overall, we have #{students.count} great students"
