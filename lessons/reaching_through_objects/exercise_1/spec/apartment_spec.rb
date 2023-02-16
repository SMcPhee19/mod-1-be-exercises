require 'rspec'
require './lib/apartment'
require './lib/room'

RSpec.describe Apartment do

  it 'exists' do
    apartment = Apartment.new

    expect(apartment).to be_a(Apartment)
    expect(apartment.is_rented).to be false
  end

  it 'can be rented' do
    apartment = Apartment.new
    apartment.rent

    expect(apartment.is_rented).to be true
  end

  it 'can add up to four rooms' do
    apartment = Apartment.new
    bathroom = Room.new("bathroom")

    expect(apartment.add_room(bathroom)).to eq([bathroom])

    apartment.add_room(Room.new("laundry"))
    apartment.add_room(Room.new("kitchen"))
    apartment.add_room(Room.new("bedroom"))
    
    expect(apartment.rooms.size).to eq(4)
  end

  it 'can be sorted alphabetically' do
    apartment = Apartment.new

    bathroom = Room.new("bathroom")
    apartment.add_room(Room.new("bathroom"))
    apartment.add_room(Room.new("laundry"))
    apartment.add_room(Room.new("kitchen"))
    apartment.add_room(Room.new("bedroom"))

    expect(apartment.list_rooms_by_name_alphabetically).to eq(["bathroom", "bedroom", "kitchen", "laundry"])
  end
end