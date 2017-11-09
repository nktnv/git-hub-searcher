class VotesController < ApplicationController

  include ApplicationHelper

  before_action :previous_url

  def vote
    @vote = Vote.find_by(item_type: vote_params[:item_type], item_id: vote_params[:item_id])
    if @vote.nil?
      @vote = Vote.create(vote_params)
    else
      @vote.update_attributes(vote_params)
    end
    respond_to do |format|
      format.html { redirect_to @previous_url }
      format.js { render action: 'vote_interaction.js.erb' }
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:item_type, :item_id, :status)
  end

end
