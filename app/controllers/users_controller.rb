class UsersController < ApplicationController
	 before_action :set_user, only: [:updateprofile]

  def show
  	@users = User.all

  end


  def profile
    render 'myprofile'
  end

  def editprofile
    @user = User.find(params[:id])

  end

  def updateprofile
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Profile was successfully updated.' }
        format.json { render :myprofile, status: :ok, location: @user }
      else
        format.html { render :myprofile }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end

  end

 private

    def set_user
      @user = User.find(params[:id])
    end

end
