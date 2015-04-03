require_relative "player"

def prompt_for_name(user)
  "What is your name #{user}: "
end

def create_player(player)
  print prompt_for_name(player)
  player_name = gets.chomp!
  Player.new(player_name, 3, true)
end

@player1 = create_player("player 1")
@player2 = create_player("player 2")

puts @player1.name
puts @player1.lives