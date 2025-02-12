class Team 
    attr_reader :team_name, :team_state, :roster

    def initialize(team_name,team_state)
        @team_name = team_name
        @team_state = team_state
        @roster = []
        
    end
    def player_count
        @roster.count
    end
    def add_player(player)
        @roster << player
    end
        
end