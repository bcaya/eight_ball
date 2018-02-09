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
require_relative 'answers'

puts 'Welcome to the Magic Eightball'
puts 'Type quit when you\'re done'

@finished = false

def program
  @answers = Answers.new 
  until @finished == true
    print "Ask the Magic Eightball a question\n>"
    question = gets.chomp
    if question.include? 'quit'
      exit(0)
    else
      puts
      puts @answers.rand_answers
      puts
    end
  end
end


program 