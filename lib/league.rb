require './lib/team'
require './lib/player'

class League
  attr_reader :name,
              :teams

  def initialize(name)
    @name = name
    @teams = []
  end

  def add_team(teams)
    @teams << teams
  end

  def captains
    find_players = @teams.filter_map do |team|
      team.players if teams
    end.flatten
  end

  def players_by_team
    hash = Hash.new { |hash, key| hash[key] = [] }
    all_players = @teams.filter_map do |team|
      team.players
    end.flatten

    @teams.each do |team|
      all_players.each do |player|
        hash[team] << player.name
      end
    end
    hash
  end

end
