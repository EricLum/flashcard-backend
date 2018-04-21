class Api::V1::CardsController < ApplicationController

  def create
    @card = Card.new(cards_params)
    if @card.save
      render json: @card
    else
      render json: @card.errors.full_messages
    end
  end

  def destroy

  end

  private

  def cards_params
    params.require(:card).permit(:question, :answer, :title)
  end
end
