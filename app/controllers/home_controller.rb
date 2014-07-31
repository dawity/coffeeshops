#---
#       CS81 Project
#  Auth: DAWIT HAILE ACHAMYELHE
#   summer 2014
# 
# 
# 
#---


class HomeController < ApplicationController
    def index
        # BEGIN Simple but working search capabliy added by Dawit Haile
        if params[:search].present?
            @coffeshoplocs = CofeeLoc.near(params[:search], 10).order("created_at DESC")
            @coffeshoplocs if @ganjalocs.present?

        else
          @coffeshoplocs = CofeeLoc.all
        end

        @hash = Gmaps4rails.build_markers(@coffeshoplocs) do |coffeshop, marker|
            marker.lat coffeshop.latitude
            marker.lng coffeshop.longitude
            marker.title coffeshop.title
        end
        @coffeshoplocs = @coffeshoplocs.page(params[:page]).per_page(10)
    end

    def show
      @coffeshoplocs.all
    end
    
end

#  Work done by DAWIT HAILE ACHAMYELHE for CS81 Projects