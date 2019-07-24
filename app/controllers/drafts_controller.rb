class DraftsController < ApplicationController
  def index
    drafts = Draft.all
    render json: DraftSerializer.new(drafts)
  end

  def show
    draft = Draft.find(params[:id])
    render json: DraftSerializer.new(draft)
  end

  def create
    draft = Draft.create(player_id: draft_params[:player_id], drafted_team_id: draft_params[:drafted_team_id])
    render json: draft
  end

  private

  def draft_params
    params.permit!
  end
end