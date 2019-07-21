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
  
  def create
    user = User.create(user_params)

    if user.valid?
      render json: {token: encode_token(user_payload(user))}
    else
      render json: {errors: user.errors.full_messages}
    end
  end

  def profile
    render json: current_user
  end

  private

  def user_params
    params.permit(:username, :password)
  end
end