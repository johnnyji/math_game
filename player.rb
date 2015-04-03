class Player
  attr_reader :name
  attr_accessor :lives, :alive, :answer

  def initialize(name)
    @name = name.capitalize.colorize(:light_blue)
    @lives = 3
    @alive = true
  end

  def is_dead?
    @lives < 1
  end

  def display_lives
    case @lives
    when 1 then "#{@name} has #{@lives} LIFE LEFT!".colorize(:white)
    when 0 then "#{@name} is outta lives!".colorize(:white)
    else "#{@name} has #{@lives} lives left".colorize(:white)
    end
  end
end

#TEST
# p = Player.new("Johnny")
# puts p.is_dead?