class Board

  attr_reader :board_size, :start
  attr_accessor :board, :moves, :move_num

  # Take the last move and loop through, these to return the next possible move.
  Possible_Moves = [ [-2, 1], [-1, 2], [1, 2], [2, 1], [2, -1], [1, -2], [-1, -2], [-2, -1] ]

  def initialize(board_size, start, move_num = 1)
    @board_size = board_size
    @start = start
    @board = create_board
    @moves = []
    @move_num = move_num
  end

  def create_board
    self.board = []
    row = []
    self.board_size.times do |x| row << 0 end
    board_size.times do |x| self.board << row.dup end
    self.board
  end

  def start_location
    moves << start
    self.board[start[0]][start[1]] = self.move_num
    self.move_num += 1
  end

  def find_moves
    last = moves.last
    new_moves = []
    Possible_Moves.each do |move|
      new_moves << [last[0] + move[0], last[1] + move[1]]
    end
    new_moves
    binding.pry
  end

  def print_board
    length = board.length
    i=0
    while(i < length)
      p board[i]
      i += 1
    end
  end

end