require 'rspec'
require './lib/room'

RSpec.describe Room do
  describe '#initialize' do
    it 'exists' do
      room = Room.new('bathroom')

      expect(room).to be_a(Room)
      expect(room.name).to eq('bathroom')
    end
  end
end