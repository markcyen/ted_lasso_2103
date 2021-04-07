require 'rspec'
require './lib/player'

describe '#initialize' do
  it 'exits' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder", salary: 1_000_000})
    expect(roy).to be_instance_of(Player)
  end

  it 'calls name, position, and salary' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder", salary: 1_000_000})
    expect(roy.name).to eq("Roy Kent")
    expect(roy.position).to eq("Center Midfielder")
    expect(roy.salary).to eq(1000000)
  end
end
