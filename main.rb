# - User inputs question
# - Computer outputs random answer
# - User inputs "QUIT"
# - Computer outputs a goodbye message and exits
# - ability to add more answers:
# - via easter egg question ("add_answers")
# - do not let them add the same answer if the eight ball already has that answer
# - ability to reset answers back to the original bank (hint: think arr.clone)
# - via easter egg question ("reset_answers")
# - ability to have eight ball print all answers
# - via easter egg question ("print_answers")
require 'colorize'
require_relative "answers.rb"
require_relative "eightball_art.rb"
puts "\n\n\n"
puts `clear`
space =' '*16
b = "~*~".light_blue
lines = "_"*33
s = "*".light_green
puts @art.blue
puts
print space
puts lines.cyan
print space
print s, b, s, b, s, b, s, b, s, b, s, b, s, b, s, b, s
puts
print space
puts ' Welcome to the Magic Eightball'.light_red
print space
puts '   Type quit when you\'re done'.magenta
print space
puts lines.cyan
print space
print s, b, s, b, s, b, s, b, s, b, s, b, s, b, s, b, s
print space
puts "\n\n"

@finished = false


def program
  user_input = Answers.new 
  until @finished == true
    print "Ask the Magic Eightball a question\n\n".light_blue
    questions = gets.chomp.to_s
  if questions == 'quit'
      puts `clear`
      print "\n\n\n\nMagic Eightball is sad to see you leave.".light_blue
      sleep 1
      puts `clear`
      exit(0)
      puts
  elsif questions == "print_answers"
        user_input.show_all 
  elsif questions == "add_answers"
    user_input.add_answers
  elsif questions =="reset_answers"
    user_input.reset_answers
  else 
    user_input.rand_answers 
    end 
  end
end

program


    # elsif question.include? 'sudo'
    #   question.slice! 'sudo'
    #   @answers<< question
    #   puts "Thanks, your input was added to avlaiable answers.".light_cyan