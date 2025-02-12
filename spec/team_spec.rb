require './lib/player'
require './lib/team'

RSpec.describe Team do
    it "is a team" do
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        team = Team.new("Dodgers", "Los Angeles")

        expect(team).to be_a Team
    end
    it "has a roster" do
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        team = Team.new("Dodgers", "Los Angeles")

        expect(team.roster).to eq([])
    end
    it "can count players" do
        player_1 = Player.new("Michael Palledorous" , 1000000, 36)
        player_2 = Player.new("Kenny DeNunez", 500000, 24)
        team = Team.new("Dodgers", "Los Angeles")

        expect(team.player_count).to eq(0)
    end
    it "add players" do
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    team = Team.new("Dodgers", "Los Angeles")
    team.add_player(player_1)
    team.add_player(player_2)
    
    expect(team.roster).to include(player_1, player_2)
    expect(team.player_count).to eq(2)
    end
end
