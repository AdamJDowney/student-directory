def interactive_menu
  students = []
  loop do
    # 1 print menu and ask user what to do
    puts "1. Input students"
    puts "2. Show the students"
    puts "9. Exit"
    # 2 read input and save into variable
    choice = gets.chomp
    # 3 do what user has asked
    case choice
    when "1"
        # input students
      students = input_students
    when "2"
        # show students
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit # exits
    else 
      puts "I dont know what you meant, please try again."
    end
  end
end

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
interactive_menu
print_header
print(students)
print_footer(students)
