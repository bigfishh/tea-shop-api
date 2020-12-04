class TeaVarietiesController < ApplicationController

    def index 
        tea_varieties = TeaVariety.all 
        render json: tea_varieties
    end

end
