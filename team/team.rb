class Team
  attr_reader :team_name, :players, :coach


  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  def new_coach(new_hire)
    @coach = new_hire
  end

  def add_player(new_player)
    @players.push(new_player)
  end

  def player_search(query)
    if @players.include?(query)
      return query
    end
  end

  def points(win)
    points = win * 2
  end

  # def win(win)








end