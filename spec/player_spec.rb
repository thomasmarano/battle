require 'player'

describe Player do
  subject(:thomas) { Player.new('Thomas') }
  subject(:edley) { Player.new('Edley')}

  describe "#returns_name" do
    it 'returns its own name' do
      expect(thomas.returns_name).to eq('Thomas')
    end
  end

  describe '#hit_points' do
    it "returns a player's hit points" do
      expect(thomas.hit_points).to eq(Player::DEFAULT_HP)
    end
  end

  describe "#attack" do
    it 'damages the player' do
      expect(edley).to receive(:receive_damage)
      thomas.attack(edley)
    end
  end

  describe "#receive_damage" do
    it 'reduces a player\'s hp by 10' do
        expect{edley.receive_damage}.to change{edley.hit_points}.by(-10)
    end
  end
end
