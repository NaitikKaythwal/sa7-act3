class AdventureGame
  attr_accessor :total_points

  def initialize
    @total_points = 0
    @rooms = {
      1 => 5,
      2 => 10,
      3 => 15
    }
  end

  def start_game
    puts "Welcome to the Adventure Game!"
    puts "You have #{@total_points} points."
    loop do
      print "Choose a room (1-3) to enter or 'exit' to end the game: "
      input = gets.chomp.downcase
      break if input == 'exit'
      room_number = input.to_i
      if @rooms.key?(room_number)
        enter_room(room_number)
      else
        puts "Invalid input. Please enter a number between 1 and 3 or 'exit'."
      end
    end
    puts "Game over! You collected a total of #{@total_points} points."
  end

  def enter_room(room_number)
    points_earned = @rooms[room_number]
    @total_points += points_earned
    puts "You entered Room #{room_number} and earned #{points_earned} points."
    puts "Total points: #{@total_points}."
  end
end

game = AdventureGame.new
game.start_game
