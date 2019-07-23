class LeaguesController < ApplicationController
  def index
    leagues = League.all
    render json: LeagueSerializer.new(leagues)
  end

  def show
    league = League.find(params[:id])
    render json: LeagueSerializer.new(league)
  end

  def create
    # debugger 
    league = League.create(name: league_params[:league_name])
    
    if league.valid?
      render json: league
    else
      render json: {errors: user.errors.full_messages}
    end
  end

  private

  def league_params
    params.permit!
  end
end