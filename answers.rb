class Answers
  attr_accessor
  
  def initialize
    @answers = ["Yes", "No", "Maybe","Outlook does not good", "Idk dude?", "It is a definite maybe", "Very doubtful"]
  end 

  def rand_answers
    puts @answers.sample 
  end 

end 

@answerss = Answers.new 

@answerss.rand_answers 


