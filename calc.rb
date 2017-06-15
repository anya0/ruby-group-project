#message (tells user what to do)
#user inputs something using gets
#take input and use it
#output an answer

def adder(a,b)
return a.to_f + b.to_f
end

def subber(a,b)
  return a.to_f - b.to_f
end

def isNum(x)
  if x == "0" || x.to_i != 0
    return true
  else
    return false
  end
end

def isop(x)
  if x == "+" || x == "-"
    return true
  else
    return false
  end
end

# To make your code easier to read, you may want to define your methods here
puts "Do you want to add or subtract, + or -"
choice = gets.chomp
until isop(choice)
puts "invalid"
puts "Actually bro, do you want to add or subtract, + or -!"
choice = gets.chomp
end

puts "input first number"
a = gets.chomp
puts "input second number"
b = gets.chomp

until isNum(a) == true && isNum(b)
  puts "invalid input :("
puts "input first number"
a = gets.chomp
puts "input second number"
b = gets.chomp
end
puts "the answer is #{adder(a, b)}"


  # Then you can call them in the actual calculator

# puts "input first number"
# a = gets.chomp.to_f
# puts "input second number"
# b = gets.chomp.to_f

# puts "#{a + b}"

# # This prompt happens before we start the "until" loop - we only want to welcome the user once.
# puts "Welcome to the Ruby calculator. You can type 'exit' at any time to leave. \nWhat would you like to do do?"
# choice = gets.chomp
# # The calculator starts looping here.
# until choice == "exit"
#   # You'll want to code all your calculator's functionality inside of this until loop.
#   # Right now, since we haven't built it yet, we have an error message so that they aren't confused.
#   puts "Sorry, I haven't been programmed to do that yet."

#   # This last bit is how we check to see if your user would like to exit
#   # or if they'd like to do some other operation before shutting down the calculator
#   puts "What would you like to do next?"
#   choice = gets.chomp
# end
