require './lib/player'

class Team
  attr_reader :name,
              :coach,
              :players

  def initialize(name, coach, players)
    @name = name
    @coach = coach
    @players = []
  end

  def add_players(players)
    @players << players
  end

  def total_salary
    player_salary = @players.filter_map do |player|
      player.salary
    end

    sum_salaries = player_salary.reduce(0) do |sum, salary|
      sum + salary
    end
  end

  def captain
    @players[0].name
  end

  def positions_filled
    player_positions = @players.filter_map do |player|
      player.position
    end
  end

end
