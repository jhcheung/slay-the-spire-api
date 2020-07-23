class Api::V1::RelicsController < ApplicationController

    def index
        relic = Relic.all
        render json: RelicSerializer.new(relic)
    end

    def show
        relic = Relic.find(params[:id])
        render json: RelicSerializer.new(relic)
    end
end
