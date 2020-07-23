class Api::V1::CardsController < ApplicationController

    def index
        card = Card.all
        render json: CardSerializer.new(card)
    end


    def show
        card = Card.find(params[:id])
        render json: CardSerializer.new(card)
    end
end
