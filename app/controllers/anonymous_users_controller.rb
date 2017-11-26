class AnonymousUsersController < ApplicationController
  before_action :set_anonymous_user, only: [:show, :edit, :update, :destroy]

  # GET /anonymous_users
  # GET /anonymous_users.json
  def index
    @anonymous_users = AnonymousUser.all
  end

  # GET /anonymous_users/1
  # GET /anonymous_users/1.json
  def show
  end

  # GET /anonymous_users/new
  def new
    @anonymous_user = AnonymousUser.new
  end

  # GET /anonymous_users/1/edit
  def edit
  end

  # POST /anonymous_users
  # POST /anonymous_users.json
  def create
    @anonymous_user = AnonymousUser.new(anonymous_user_params)

    respond_to do |format|
      if @anonymous_user.save
        format.html { redirect_to @anonymous_user, notice: 'Anonymous user was successfully created.' }
        format.json { render :show, status: :created, location: @anonymous_user }
      else
        format.html { render :new }
        format.json { render json: @anonymous_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anonymous_users/1
  # PATCH/PUT /anonymous_users/1.json
  def update
    respond_to do |format|
      if @anonymous_user.update(anonymous_user_params)
        format.html { redirect_to @anonymous_user, notice: 'Anonymous user was successfully updated.' }
        format.json { render :show, status: :ok, location: @anonymous_user }
      else
        format.html { render :edit }
        format.json { render json: @anonymous_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anonymous_users/1
  # DELETE /anonymous_users/1.json
  def destroy
    @anonymous_user.destroy
    respond_to do |format|
      format.html { redirect_to anonymous_users_url, notice: 'Anonymous user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anonymous_user
      @anonymous_user = AnonymousUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anonymous_user_params
      params.require(:anonymous_user).permit(:name, :phone, :email, :school_id)
    end
end
