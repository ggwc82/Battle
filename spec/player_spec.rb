require 'player'

feature Player do
  subject(:player) { described_class.new(name1) }
  let(:name1) { "Valentina" }

  scenario 'returns player name' do
    expect(player.name).to eq 'Valentina'
  end
end