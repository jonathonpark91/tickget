class UsersController < ApplicationController
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
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
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
		@user = User.find(params[:id])

		if @user.destroy
			redirect_to action: 'index'
		else	
			render action: 'show'
		end
	end

private
	
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :name, :photo, :location)
    end

end
