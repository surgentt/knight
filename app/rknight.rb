class KnightMe

  attr_reader :board_size, :start
  attr_accessor :board, :moves, :move_num

  def initialize(board_size, start)
    @board_size = board_size
    @location = location
    @board = create_board
    @moves = []
    @move_num = 1
  end

  def create_board
    board = []
    row = []
    board_size.times do |x| row << 0 end
    board_size.times do |x| board << row end
    board
  end

  def start_location
    moves << start
    binding.pry
    #board[start[0]start[1]]
  end

  private

  def print_board
    length = board.length
    i=0
    while(i < length)
      p board[i]
      i += 1
    end
  end

end