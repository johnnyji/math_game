
class Game
  attr_accessor :game_over

  def initialize
    @player1 = nil
    @player2 = nil
    @current_player = nil
    @game_over = false
  end

  def play
    setup
    execute
  end

##### PRIVATE METHODS #####
private

  def setup
    @player1 = Player.new(prompt_player('player 1'))
    @player2 = Player.new(prompt_player('player 2'))
    @current_player = @player1
  end

  def execute
    until one_player_loses
      random_question = RandomQuestion.new
      print "#{@current_player.name}, #{random_question.ask}: "
      @current_player.answer = gets.chomp.to_i

      unless answer_matches?(random_question)
        @current_player.lives -= 1
        puts 'WRONG ANSWER!'.colorize(:red)
        display_player_status
      else
        puts "CORRECT".colorize(:green)
      end
      switch_players
    end
    puts "GAME OVER".colorize(:green)
  end

  def prompt_player(player)
    print "What is your name #{player}: "
    gets.chomp!
  end

  def answer_matches?(random_question)
    @current_player.answer == random_question.answer
  end

  def one_player_loses
    @player1.is_dead? || @player2.is_dead?
  end

  def display_player_status
    puts @player1.display_lives
    puts @player2.display_lives
  end

  def switch_players
    @current_player = (@current_player == @player1 ? @player2 : @player1)
  end
end