class MatchupsController < ApplicationController
  def index
    matchups = Matchup.all
    render json: MatchupSerializer.new(matchups)
  end

  def show
    matchup = Matchup.find(params[:id])
    render json: MatchupSerializer.new(matchup)
  end

  def create
    matchup = Matchup.create(user_id: matchup_params[:user_id], opponent_id: matchup_params[:opponent_id])
    render json: MatchupSerializer.new(matchup)
  end

  private

  def matchup_params
    params.permit!
  end
end