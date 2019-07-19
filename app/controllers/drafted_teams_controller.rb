class DraftedTeamsController < ApplicationController
  def index
    drafted_teams = DraftedTeam.all
    render json: DraftedTeamSerializer.new(drafted_teams)
  end

  def show
    drafted_team = DraftedTeam.find(params[:id])
    render json: DraftedTeamSerializer.new(drafted_team)
  end
end