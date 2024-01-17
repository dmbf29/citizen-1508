require_relative "../citizen"

describe Citizen do
  describe '#initialize' do
    it 'should return an instance of a Citizen' do
      expect(Citizen.new('yann', 'klein', 36)).to be_a(Citizen)
    end
  end

  describe '#can_vote?' do
    it 'should return false if under 18' do
      yann = Citizen.new('yann', 'klein', 17)
      expect(yann.can_vote?).to eq(false)
    end

    it 'should return true if over or eq to 18' do
      yann = Citizen.new('yann', 'klein', 36)
      expect(yann.can_vote?).to eq(true)
    end
  end

  describe '#full_name' do
    it 'should return a formatted string of a fullname' do
      yann = Citizen.new('yann', 'klein', 36)
      expect(yann.full_name).to eq('Yann Klein')
    end
  end
end
