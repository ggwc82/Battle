require 'player'

describe Player do
  subject(:player) { described_class.new(name1, hp) }
  let(:name1) { "Valentina" }
  let(:hp) { 100 }

  it 'returns player name' do
    expect(player.name).to eq 'Valentina'
  end

  it 'returns returns a confirmation after an attack' do
    expect(player.hp).to eq hp
  end
end