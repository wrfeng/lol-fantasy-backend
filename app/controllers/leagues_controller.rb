class LeaguesController < ApplicationController
  def index
    # options: {}
    leagues = League.all
    render json: LeagueSerializer.new(leagues)
  end

  def show
    options = {}
    options[:include] = [:players, :'player.stats']
    league = League.find(params[:id])
    render json: LeagueSerializer.new(league, options)
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

  def update
    league = League.find(params[:id])
    league.update(drafted: league_params[:drafted])
  end

  private

  def league_params
    params.permit!
  end
end