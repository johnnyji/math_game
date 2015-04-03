class Player
  attr_reader :name
  attr_accessor :lives, :alive

  def initialize(name)
    @name = name
    @lives = 3
    @alive = true
  end

  def lives_remaining

  end

  def wrong_answer

  end
end