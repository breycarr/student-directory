# In the input_students method the cohort value is hard-coded. 
# How can you ask for both the name and the cohort? What if one of the values is empty? 
# Can you supply a default value? The input will be given to you as a string? 
# How will you convert it to a symbol? What if the user makes a typo?

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  students = []

  name = gets.chomp

  while !name.empty? do
    
    puts "What cohort are they part of?"
    cohort = gets.chomp
    if cohort == "" 
      cohort = "november"
    end
    students << {name: name, cohort: cohort.to_sym}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end

  students
end

def print_header
  puts "The students of Villain Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)