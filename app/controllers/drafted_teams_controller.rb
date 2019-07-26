class DraftedTeamsController < ApplicationController
  def index
    options = {}
    options[:include] = [:players, :'players.stats']
    options[:except] = [:players, :drafts]
    drafted_teams = DraftedTeam.all
    render json: DraftedTeamSerializer.new(drafted_teams, options)
  end

  def show
    options = {}
    options[:include] = [:players, :'players.stats']
    drafted_team = DraftedTeam.find(params[:id])
    render json: DraftedTeamSerializer.new(drafted_team, options)
  end

  def create
    DraftedTeam.create(league_id: params[:league_id], user_id: params[:user_id])
  end

  private

  def drafted_team_params
    params.permit(:league_id, :player_id)
  end
end