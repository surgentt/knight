class Board

  attr_reader :board_size, :start
  attr_accessor :board, :moves, :move_num

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
    binding.pry
    moves << start
    self.board[start[0]][start[1]] = self.move_num
    self.move_num += 1
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