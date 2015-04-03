class RandomQuestion

  def initialize
    @num1 = rand(1..10)
    @num2 = rand(1..10)
    @operator = [:+, :-, :*, :/].sample
    @answer = @num1.send(@operator, @num2)  
  end

  def check_answer(user_answer)
    if user_answer == @answer
      "Correct!"
    else
      "Wrong!"
    end
  end

  def ask
    puts "What is #{@num1} #{@operator.to_s} #{@num2}?"
  end

end

q = RandomQuestion.new
puts q.ask
input = gets.chomp.to_i
puts q.check_answer(input)