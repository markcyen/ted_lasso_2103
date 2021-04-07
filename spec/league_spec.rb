require 'rspec'
require './lib/league'
require './lib/team'
require './lib/player'

describe '#initialize' do
  it 'exists' do
    premier = League.new("Premier League")
    expect(premier).to be_instance_of(League)
  end

  it 'has name and check for teams as Array' do
    premier = League.new("Premier League")
    expect(premier.name).to eq("Premier League")
    expect(premier.teams).to eq([])
  end
end

describe 'teams in premier league' do
  it 'check for teams in premier leage' do
    premier = League.new("Premier League")
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
    richmond.add_players(roy)
    richmond.add_players(sam)
    jamie = Player.new({name: "Jamie Tartt", position: "Striker", salary: 1_500_000})
    fernandinho = Player.new({name: "Fernandinho", position: "Midfielder", salary: 5_200_000})
    manchester = Team.new("Manchester City FC", "Pep Guardiola", [jamie, fernandinho])
    manchester.add_players(jamie)
    manchester.add_players(fernandinho)
    premier.add_team(richmond)
    premier.add_team(manchester)

    expected = [richmond, manchester]
    expect(premier.teams).to eq(expected)
  end

  xit 'check for captains' do
    premier = League.new("Premier League")
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
    richmond.add_players(roy)
    richmond.add_players(sam)
    jamie = Player.new({name: "Jamie Tartt", position: "Striker", salary: 1_500_000})
    fernandinho = Player.new({name: "Fernandinho", position: "Midfielder", salary: 5_200_000})
    manchester = Team.new("Manchester City FC", "Pep Guardiola", [jamie, fernandinho])
    manchester.add_players(jamie)
    manchester.add_players(fernandinho)
    premier.add_team(richmond)
    premier.add_team(manchester)

    expected = [richmond.captain, manchester.captain]
    expect(premier.captains).to eq(expected)
  end

  it 'check for players by each team' do
    premier = League.new("Premier League")
    roy = Player.new({name: "Roy Kent", position: "Center Midfielder" , salary: 1_000_000})
    sam = Player.new({name: "Sam Obisanya", position: "Right-back Defender", salary: 600_000})
    richmond = Team.new("AFC Richmond", "Ted Lasso", [roy, sam])
    richmond.add_players(roy)
    richmond.add_players(sam)
    jamie = Player.new({name: "Jamie Tartt", position: "Striker", salary: 1_500_000})
    fernandinho = Player.new({name: "Fernandinho", position: "Midfielder", salary: 5_200_000})
    manchester = Team.new("Manchester City FC", "Pep Guardiola", [jamie, fernandinho])
    manchester.add_players(jamie)
    manchester.add_players(fernandinho)
    premier.add_team(richmond)
    premier.add_team(manchester)

    expected = {
      richmond => [roy.name, sam.name],
      manchester => [jamie.name, fernandinho.name]
    }
    expect(premier.players_by_team).to eq(expected)
  end
end
