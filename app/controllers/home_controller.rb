class HomeController < ApplicationController
    def index
        if params[:search].present?
          @ganjalocs = Ganjaloc.near(params[:search], 10).order("created_at DESC")
        if @ganjalocs.present?
        @ganjalocs
        
        end  
           
           
           
                  
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

