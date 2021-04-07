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

end
