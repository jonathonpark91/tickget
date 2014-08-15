class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update, :destroy]
before_action :signed_in_user, only: [:index, :show, :edit, :update, :destroy]
before_action :correct_user, only: [:show, :edit, :update, :destroy]

	def index
		@users =User.all
	end

	def new 
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
			@users = User.all
			sign_in @user
			render action: 'index'
    	else
	        render action: 'new'
	    end
		# respond_to do |format|
	 #      if @user.save
	 #        sign_in @user
	 #        format.html { redirect_to @user, notice: 'User was successfully created.' }
	 #        format.json { render :show, status: :created, location: @user }
	 #      else
	 #        format.html { render :new }
	 #        format.json { render json: @user.errors, status: :unprocessable_entity }
	 #      end
  #   	end
	end

	def show
		
	end

	def edit
		
	end

	def update
		@user = User.find(params[:id])

			if @user.update(user_params)
				redirect_to action: 'show'
			else
				render action: 'edit'
			end
	end

	def destroy
		@user.destroy
    	respond_to do |format|
      	format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      	format.json { head :no_content }
  		end
	end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :name, :photo, :location)
    end

end
