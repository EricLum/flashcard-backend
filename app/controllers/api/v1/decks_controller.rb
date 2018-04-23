class Api::V1::DecksController < ApplicationController

  def index
    @decks = Deck.all
    render json: @decks
  end

  def create
    @deck = Deck.new(deck_params)
    if @deck.save
      render json: @deck
    else
      render json: @deck.errors.full_messages
    end
  end

  private

  def deck_params
    params.require(:deck).permit(:title)
  end

end
