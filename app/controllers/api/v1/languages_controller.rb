class Api::V1::LanguagesController < ApplicationController
    # before_action :create_language, only: :index

    def index
        @languages = {apiKey: Rails.application.credentials[:apiKey]}
        render json: @languages
    end

    private

    def language_params
        params.permit(:apiKey)
    end

    # def create_language
    #     @language = Language.(language_params)
    #     @language.save
    # end

end
