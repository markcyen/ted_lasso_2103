require 'rspec'
require './lib/player'
require './lib/team'

describe Team do
  it 'check for data in teams' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])

    expect(richmond.name).to eq('AFC Richmond')
    expect(richmond.coach).to eq("Ted Lasso")
    expect(richmond.players).to eq([roy, sam])
    expect(richmond.total_salary).to eq(1600000)
    expect(richmond.captain).to eq("Roy Kent")
  end

  it 'check for positions_filled' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])

    expect(richmond.positions_filled).to eq([roy.position, sam.position])
  end


end
