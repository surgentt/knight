require_relative '../config/environment'

board1 = Board.new(8,[0,0])

board1.print_board
board1.start_location
puts 
board1.print_board
board1.find_moves
board1.make_move
board1.print_board