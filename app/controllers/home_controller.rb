class HomeController < ApplicationController
    def index
        # BEGIN Simple but working search capabliy added by Dawit Haile
        if params[:search].present?
            @ganjalocs = Ganjaloc.near(params[:search], 10).order("created_at DESC")
            @ganjalocs if @ganjalocs.present?
        
        else
          @ganjalocs = Ganjaloc.all
        end

        @hash = Gmaps4rails.build_markers(@ganjalocs) do |ganjaloc, marker|
            marker.lat ganjaloc.latitude
            marker.lng ganjaloc.longitude
            marker.title ganjaloc.title
        end
        @ganjalocs = @ganjalocs.page(params[:page]).per_page(10)
    end

    def show
        @ganjalocs.all
    end
    
end

