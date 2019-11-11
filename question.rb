class Question
  
  attr_accessor :randomNum1, :randomNum2, :name, :correctAnswer

  def initialize(name)
    @name = name
    @randomNum1 = rand(20)
    @randomNum2 = rand(20)
    @correctAnswer = randomNum1 + randomNum2
  end
  
  def output
    print "What is #{randomNum1} + #{randomNum2} ? "
    print ""
  end
end
