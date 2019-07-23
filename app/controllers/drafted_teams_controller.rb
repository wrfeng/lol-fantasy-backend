class DraftedTeamsController < ApplicationController
  def index
    drafted_teams = DraftedTeam.all
    render json: DraftedTeamSerializer.new(drafted_teams)
  end

  def show
    drafted_team = DraftedTeam.find(params[:id])
    render json: DraftedTeamSerializer.new(drafted_team)
  end

  def create
    DraftedTeam.create(league_id: params[:league_id], user_id: params[:user_id])
  end

  private

  def drafted_team_params
    params.permit(:league_id, :player_id)
  end
end