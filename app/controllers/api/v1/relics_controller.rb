class Api::V1::RelicsController < ApplicationController

    def index
        relics = Relic.with_attached_main_image
        render json: RelicSerializer.new(relics)
    end

    def show
        relic = Relic.find(params[:id])
        render json: RelicSerializer.new(relic)
    end
end
