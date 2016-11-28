require('minitest/autorun')
require_relative( '../team')

class TeamSpec < MiniTest::Test

  def setup
    @team_name = "Canucks"

    @players = [

    "Henrik Sedin",
    "Daniel Sedin",
    "Chris Tanev",
    "Bo Horvat"
    ]

    @coach = "Willie Desjardins"
  end

  # def has_team_name
  #   team = Team.new(@team_name, @players, @coach)
  #   assert_equal(Team, team.class)
  # end
  
  def test_has_players
    team = Team.new(@team_name, @players, @coach)
    assert_equal(["Henrik Sedin", "Daniel Sedin", "Chris Tanev", "Bo Horvat"], team.players)
  end

  def test_has_coach
    team = Team.new(@team_name, @players, @coach)
    assert_equal("Willie Desjardins", team.coach)
  end

  def test_can_get_team_name
    team = Team.new(@team_name, @players, @coach)
    assert_equal("Canucks", team.team_name)
  end

  def test_can_alter_coach
    team = Team.new(@team_name, @players, @coach)
    team.new_coach("Lindy Ruff")
    assert_equal("Lindy Ruff", team.coach)
  end

  def test_can_add_player
    team = Team.new(@team_name, @players, @coach)
    assert_equal(["Henrik Sedin", "Daniel Sedin", "Chris Tanev", "Bo Horvat", "Jake Virtanen"], team.add_player("Jake Virtanen"))
  end

  def test_find_player
    team = Team.new(@team_name, @players, @coach)
    assert_equal("Chris Tanev", team.player_search("Chris Tanev"))
  end

  def test_points
    team = Team.new(@team_name, @players, @coach)
    assert_equal(0, team.points(0))
  end

  def test_win
    team = Team.new(@team_name, @players, @coach)
    assert_equal(8, team.points(4))
  end


end