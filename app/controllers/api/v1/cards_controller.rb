class Api::V1::CardsController < ApplicationController

    def index
        cards = Card.all
        render json: CardSerializer.new(cards)
    end


    def show
        card = Card.find(params[:id])
        render json: CardSerializer.new(card)
    end
end
