require('minitest/autorun')
require('minitest/rg')
require_relative('./team')

class TestTeam < MiniTest::Test


    def test_get_name
      team = Team.new("Wick FC", ["Jeff", "Pete", "Michelle", "Billie"], "Toby Carmichael", 0)
      assert_equal("Wick FC", team.team_name() )
    end

    def test_get_players
      get_player = Team.new("Wick FC", ["Jeff", "Pete", "Michelle", "Billie"], "Toby Carmichael", 0)
      assert_equal("Pete", get_player.players[1] )
    end

    def test_get_coach
      coach_name = Team.new("Wick FC", ["Jeff", "Pete", "Michelle", "Billie"], "Toby Carmichael", 0)
      assert_equal("Toby Carmichael", coach_name.coach())
    end

    def test_set_coach
      coach_change = Team.new("Wick FC", ["Jeff", "Pete", "Michelle", "Billie"], "Toby Carmichael", 0)
      coach_change.coach = "Stewart Haversham"
      assert_equal("Stewart Haversham", coach_change.coach() )
    end

    def test_add_player
      add_player = Team.new("Wick FC", ["Jeff", "Pete", "Michelle", "Billie"], "Toby Carmichael", 0)
      add_player.players = "Mike"
      assert_equal("Mike", add_player.players)
    end
  
    def test_find_player_by_name

      find_player = Team.new("Wick FC", ["Jeff", "Pete", "Michelle", "Billie"], "Toby Carmichael", 0)
      find_player.players = "Jeff"
      assert_equal("Jeff", find_player.players())
   
    end

    def test_update_points
      points_update = Team.new("Wick FC", ["Jeff", "Pete", "Michelle", "Billie"], "Toby Carmichael", 0)
      points_update.points = "Win" #what I'm aiming at here is having the points tally update when a string of 'win' or 'draw' is added to method.
      assert_equal(3, winlose_points.points())

    end

end