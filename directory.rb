@students = []
def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def process(choice)
  case choice
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students
  when "9"
    exit 
  else 
    puts "I dont know what you meant, please try again."
  end
end

def print_menu
  puts "1. Input students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load list of students froom students.csv"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = STDIN.gets.chomp
  while !name.empty? do
    @students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    name  = STDIN.gets.chomp
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "------------"
end

def print_students_list
  @students.each do |student|  
  puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def save_students
  file = File.open("students.csv", "w")
  # iterate over array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def load_students(filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
  name, cohort = line.chomp.split(",")
    @students << {name: name, cohort: cohort.to_sym}
  end
  file.close
end

def try_load_students
  filename = ARGV.first # first argument from cmd line
  return if filename.nil? # leave method if not given
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{students.count} from #{filename}"
  else # doest exist
    puts "sorry, #{filename} doesn't exist."
    exit
  end
end
try_load_students
interactive_menu
