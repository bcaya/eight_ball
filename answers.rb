require 'colorize'
class Answers
  attr_accessor 

  def initialize
    @questions = ['Yes', 'No', 'Maybe','Outlook does not good', 'Idk dude?', 'It is a definite maybe', 'Very doubtful', 'You are really asking an 8 Ball or advice?', 'It is certain', 'Without a doubt', 'As I see it, yes', 'Outlook good', 'Very doubtful', 'Concentrate and ask again', 'Very doubtful', 'Hmm not sure, ask again']
  end 

  def rand_answers()
    @questions = ['Yes', 'No', 'Maybe','Outlook does not good', 'Idk dude?', 'It is a definite maybe', 'Very doubtful', 'You are really asking an 8 Ball or advice?', 'It is certain', 'Without a doubt', 'As I see it, yes', 'Outlook good', 'Very doubtful', 'Concentrate and ask again', 'Very doubtful', 'Hmm not sure, ask again']
    puts @questions.sample  
  end 

  def show_all()
    puts @questions 
  end

  def add_answers()
    puts "Enter the answer you would like to add: "
    add_answers = gets.strip
   if  @questions.include?(add_answers) 
      puts "This is already saved as an answer".red 
   else    
    puts "#{add_answers} was added to the list of answers".light_cyan
     @questions << add_answers  
    end
  end 
end  



