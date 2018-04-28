class Api::V1::CardsController < ApplicationController

  def index
    render json: Card.all
  end

  def create
    @card = Card.new(cards_params)
    @deck = Deck.find(params[:deck][:id])
    @deck.cards << @card
    if @card.save
      render json: @card
    else
      puts @card.errors.full_messages
      render json: @card.errors.full_messages
    end
  end

  def update

  end

  def destroy

  end

  private
  def cards_params
    params.require(:card).permit(:question, :answer, :title)
  end
end
