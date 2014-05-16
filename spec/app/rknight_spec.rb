require_relative '../spec_helper'

describe KnightMe do 

  let(:knightme) {KnightMe.new(8,[0,0])}

  it "#create_board should create a board" do
    expect(knightme.create_board).to eq([
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

  it "#print_board should put the board to the screen" do
    expect(knightme.create_board).to eq("[
      [0,0,0,0,0,0,0,0],\n
      [0,0,0,0,0,0,0,0],\n
      [0,0,0,0,0,0,0,0],\n
      [0,0,0,0,0,0,0,0],\n
      [0,0,0,0,0,0,0,0],\n
      [0,0,0,0,0,0,0,0],\n
      [0,0,0,0,0,0,0,0],\n
      [0,0,0,0,0,0,0,0],
    ]") 
  end

end