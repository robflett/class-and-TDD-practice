class Team

  attr_accessor :players, :coach, :points
  attr_reader :team_name

  def initialize(team_name, players, coach, points)

    @team_name = team_name
    @players = players
    @coach = coach
    @points = points

  end

    # def name
    #   return @team_name
    # end

    # def players
    #   return @players
    # end

    # def coach
    #   return @coach
    # end

    # def set_coach(change)
    #   @coach = change
    # end

    def add_player(new_player)
      players << new_player
    end

    

    def find_team_player(new_player)

      for i in players
        return i if ( players == new_player)
      end

      return i
     
    end



    def winlose_points(winlose)
       
       @points += 3 if winlose == "Win"
       @points += 1 if winlose == "Draw"
    end
end