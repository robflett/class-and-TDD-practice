require('minitest/autorun')
require('minitest/rg')
require_relative('./team')

class TestTeam < MiniTest::Test


    def test_get_name
      team = Team.new("Wick FC", ["Jeff", "Pete", "Michelle", "Billie"], "Toby Carmichael")
      assert_equal("Wick FC", team.team_name() )
    end

    def test_get_players
      get_player = Team.new("Wick FC", ["Jeff", "Pete", "Michelle", "Billie"], "Toby Carmichael")
      assert_equal("Pete", get_player.players[1] )
    end

    def test_get_coach
      coach_name = Team.new("Wick FC", ["Jeff", "Pete", "Michelle", "Billie"], "Toby Carmichael")
      assert_equal("Toby Carmichael", coach_name.coach())
    end

    def test_set_coach
      coach_change = Team.new("Wick FC", ["Jeff", "Pete", "Michelle", "Billie"], "Toby Carmichael")
      coach_change.coach = "Stewart Haversham"
      assert_equal("Stewart Haversham", coach_change.coach() )
    end

  
  


end