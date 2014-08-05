class UsersController < ApplicationController
  def index
    @users = User.all
    respond_to do |format|
      format.html
      format.xml  { render :xml => @users }
      format.json { render :json => @users }
    end
  end

  def new
    @user = User.new
  end


  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html  do
          login(@user)
          redirect_to root_path, notice: 'user was successfully created.'
        end

        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:name, :email)
  end

end
