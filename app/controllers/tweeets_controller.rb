class TweeetsController < ApplicationController
  before_action :set_tweeet, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[index show]
  # GET /tweeets
  # GET /tweeets.json
  def index
    @tweeets = Tweeet.all
    @users = User.all
    @tweeet = Tweeet.new
  end

  # GET /tweeets/1
  # GET /tweeets/1.json
  def show; end

  # GET /tweeets/new
  def new
    @tweeet = current_user.tweeets.build
  end

  # GET /tweeets/1/edit
  def edit; end

  # POST /tweeets
  # POST /tweeets.json
  def create
    @tweeet = current_user.tweeets.build(tweeet_params)

    respond_to do |format|
      if @tweeet.save
        format.html { redirect_to action: 'index', notice: 'Tweeet was successfully created.' }
        format.json { render :show, status: :created, location: @tweeet }
      else
        format.html { render :new }
        format.json { render json: @tweeet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweeets/1
  # PATCH/PUT /tweeets/1.json
  def update
    respond_to do |format|
      if @tweeet.update(tweeet_params)
        format.html { redirect_to action: 'index', notice: 'Tweeet was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweeet }
      else
        format.html { render :edit }
        format.json { render json: @tweeet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweeets/1
  # DELETE /tweeets/1.json
  def destroy
    @tweeet.destroy if user_signed_in?
    respond_to do |format|
      format.html { redirect_to tweeets_url, notice: 'Tweeet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_tweeet
    @tweeet = Tweeet.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def tweeet_params
    params.require(:tweeet).permit(:tweeet)
  end
end