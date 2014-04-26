class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def show
    
  end

  def new
  	@user = User.new
  end
  def create
  	@user=User.new(user_params)
  	if @user.save
  		flash[:success]="Welcome to Ganja Map!"
  		redirect_to @user

  	else
  		render 'new'
  	end
  end


def edit
  
end


def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'your profile was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


def destroy
    @user.destroy
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
   	params.require(:user).permit(:name, :email)  	
   end
    
end
