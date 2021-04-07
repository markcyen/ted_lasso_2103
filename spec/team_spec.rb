require 'rspec'
require './lib/player'
require './lib/team'

describe Team do
  it 'check for team name and coach' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])

    expect(richmond.name).to eq("AFC Richmond")
    expect(richmond.coach).to eq("Ted Lasso")
  end

  it 'check for players in team' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
    richmond.add_players(roy)
    richmond.add_players(sam)

    expect(richmond.players).to eq([roy, sam])
  end

  it 'check for total salary of players in team' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
    richmond.add_players(roy)
    richmond.add_players(sam)

    expect(richmond.total_salary).to eq(1600000)
  end

  it 'check for captain on team' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
    richmond.add_players(roy)
    richmond.add_players(sam)

    expect(richmond.captain).to eq("Roy Kent")
  end

  it 'check for positions_filled' do
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
    richmond.add_players(roy)
    richmond.add_players(sam)

    expect(richmond.positions_filled).to eq([roy.position, sam.position])
  end

end
