require_relative '../spec_helper'

describe Board do 

  let(:board) {Board.new(8,[7,0])}

  it "#create_board should create a board" do
    expect(board.create_board).to eq([
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

  it "#start_location adds the start location to the moves path" do
    board.start_location
    expect(board.moves).first eq([7,0])
  end

end