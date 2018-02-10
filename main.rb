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

@answers = Answers.new

def program
  @answers = Answers.new
  until @finished == true
    print "Ask the Magic Eightball a question\n\n".light_blue
    question = gets.chomp
    if question.include? 'quit'
      puts `clear`
      print "\n\n\n\nMagic Eightball is sad to see you leave.".light_blue
      sleep 1
      puts `clear`
      exit(0)
    # elsif question.include? 'sudo'
    #   question.slice! 'sudo'
    #   @answers<< question
    #   puts "Thanks, your input was added to avlaiable answers.".light_cyan
    else
      puts
      puts @answers.rand_answers
      puts
    end
  end
end

program
