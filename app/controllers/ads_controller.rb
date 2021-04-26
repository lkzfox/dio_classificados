class AdsController < ApplicationController

    before_action :check_user_signed_in

    def new
        @ad = Ad.new
    end

    def create
        @ad = Ad.new(ad_params)
        @ad.id_user = current_user

        if @ad.save
            redirect_to root_path, notice: 'Ad cadastrado'
        else
            render :new
        end
    end

    private 
    def ad_params
        params.require(:ad).permit(:title, :description, :price)
    end
end
