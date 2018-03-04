class HomeController < ApplicationController
    def index
        #정보를 처리
    end
    
    def attack
        @from = params[:UserA]
        @to = params[:UserB]
    end
    
    def defense
        @from = params[:UserA]
        @to = params[:UserB]
    end
end
