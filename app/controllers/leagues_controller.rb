class LeaguesController < ApplicationController
  def index
    leagues = League.all
    render json: LeagueSerializer.new(leagues)
  end

  def show
    league = League.find(params[:id])
    render json: LeagueSerializer.new(league)
  end
end