require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2)}
  let(:player1 ) { double :player}
  let(:player2 ) { double :player}

  it 'returns an array of players' do
    expect(game.players).to be_an Array
  end

  it 'attacks other player and calls was_attacked method' do
    expect(player2).to receive(:was_attacked)
    game.attack(player2)
  end

end