class MatchupsController
  def index
    matchups = Matchup.all
    render json: MatchupSerializer.new(matchups)
  end

  def show
    matchup = Matchup.find(params[:id])
    render json: MatchupSerializer.new(matchup)
  end
end