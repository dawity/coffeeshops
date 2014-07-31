
#---
#       CS81 Project Summer 2014
#  Auth: DAWIT HAILE ACHAMYELHE
#  
# 
# 
# 
#---


class UsersController < ApplicationController
    before_action :signed_in_user, only: [:index, :edit, :update]
    before_action :set_user, only: [:show, :edit, :update, :destroy]
    before_action :correct_user,   only: [:edit, :update]
    before_action :admin_user,     only: :destroy
    protect_from_forgery
    
    def index
       @users = User.paginate(page: params[:page])
    end  

    def show
     @users = User.all
    end

    def new
    	@user = User.new
    end
    def create
    	@user=User.new(user_params)
    	if @user.save
        sign_in @user
    		#flash[:success]="Welcome to Ganja Map #{@user.name} !"
    		redirect_to @user, notice: "Welcome to Ganja Map #{@user.name} !"

    	else
    		render 'new'
    	end
   
end

  def edit
    @user = User.find(params[:id])
  end


  def update
      @user = User.find(params[:id])
      respond_to do |format|
        if @user.update_attributes(user_params)
          format.html { redirect_to @user, notice: 'your profile was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: 'edit' }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end


     def destroy
      User.find(params[:id]).destroy
      respond_to do |format|
        format.html { redirect_to users_url }
        format.json { head :no_content }
      end
    end


private
    def set_user
      @user=User.find(params[:id])
    end
      
    def user_params
       	params.require(:user).permit(:name, :email, :password, :password_confirmation)  	
    end


    def signed_in_user
      unless signed_in?
        # store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
    
end
