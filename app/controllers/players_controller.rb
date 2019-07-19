class PlayersController < ApplicationController
  def index
    players = Player.all
    render json: PlayerSerializer.new(players)
  end

  def show
    player = Player.find(params[:id])
    render json: PlayerSerializer.new(player)
  end
end
