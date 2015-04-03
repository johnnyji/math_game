require_relative "player"

def retrieve_player_name(player)
  print "What is your name #{player}: "
  player_name = gets.chomp!
  Player.new(player_name, 3, true)
end

@player1 = create_player("player 1")
@player2 = create_player("player 2")