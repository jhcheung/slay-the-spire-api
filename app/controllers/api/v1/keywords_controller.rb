class Api::V1::KeywordsController < ApplicationController
    def index
        keywords = Keyword.all
        render json: KeywordsSerializer.new(keywords)
    end


    def show
        keyword = Keyword.find(params[:id])
        render json: KeywordsSerializer.new(keyword)
    end

end
