require_relative '../spec_helper'

describe Board do 

  let(:board1) {Board.new(8,[7,0])}

  it "#create_board should create a board" do
    expect(board1.create_board).to eq([
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
    ])
  end

  it "#make_move adds the start location to the moves, updates board, changes counter" do
    board1.start_location
    expect(board1.moves.first).to eq([7,0])
    expect(board1.move_num).to eq(2)
    expect(board1.board).to eq([
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [0,0,0,0,0,0,0,0],
      [1,0,0,0,0,0,0,0],
    ])
  end

  it "#find_moves from the last move" do 
    board1.moves = [[6,2], [7,0]]
    expect(board1.find_moves).to eq([[5,1]])
  end

end