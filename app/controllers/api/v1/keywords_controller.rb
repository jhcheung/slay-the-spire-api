class Api::V1::KeywordsController < ApplicationController
    def index
        keywords = Keyword.all
        render json: KeywordSerializer.new(keywords)
    end


    def show
        keyword = Keyword.find(params[:id])
        render json: KeywordSerializer.new(keyword)
    end

end
