class StatsController < ApplicationController
  def index
    stats = Stat.all
    render json: StatSerializer.new(stats)
  end

  def show
    stat = Stat.find(params[:id])
    render json: StatSerializer.new(stat)
  end
end