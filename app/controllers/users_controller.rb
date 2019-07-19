class UsersController < ApplicationController
  def index 
    users = User.all
     options = {
      include: [:matchup, :opponent, :league, :drafted_team]
    }
    render json: UserSerializer.new(users)
  end
  
  def show
    user = User.find(params[:id])
    options = {
      include: [:matchup, :opponent, :league, :drafted_team]
    }
    render json: UserSerializer.new(user)
  end
  
end