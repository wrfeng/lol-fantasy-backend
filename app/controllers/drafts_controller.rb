class DraftsController < ApplicationController
  def index
    drafts = Draft.all
    render json: DraftSerializer.new(drafts)
  end

  def show
    draft = Draft.find(params[:id])
    render json: DraftSerializer.new(draft)
  end
end