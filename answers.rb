class Answers
  attr_accessor

  def initialize
    @answers = ["Yes", "No", "Maybe","Outlook does not good", "Idk dude?", "It is a definite maybe", "Very doubtful", "You are really asking an 8 Ball for advice?", "It is certain", "Without a doubt", "As I see it, yes", "Outlook good", "Very doubtful", "Concentrate and ask again", "Very doubtful", "Hmm not sure, ask again"]
  end 

  def rand_answers
    puts @answers.sample 
  end 

end 

@answerss = Answers.new 

@answerss.rand_answers 


