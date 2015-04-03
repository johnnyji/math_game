class RandomQuestion
  attr_reader :answer

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @operator = [:+, :-, :*, :/].sample
    @answer = @num1.send(@operator, @num2)  
  end

  def ask
    'What is ' + "#{@num1} #{@operator.to_s} #{@num2}".colorize(:cyan) + '?'
  end

end