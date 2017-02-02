class SquabblersController < ApplicationController
  before_action :set_squabbler, only: [:show, :edit, :update, :destroy]

  # GET /squabblers
  # GET /squabblers.json
  def index
    @squabblers = Squabbler.all
  end

  # GET /squabblers/1
  # GET /squabblers/1.json
  def show
  end

  # GET /squabblers/new
  def new
    @squabbler = Squabbler.new
  end

  # GET /squabblers/1/edit
  def edit
  end

  # POST /squabblers
  # POST /squabblers.json
  def create
    @squabbler = Squabbler.new(squabbler_params)

    respond_to do |format|
      if @squabbler.save
        format.html { redirect_to @squabbler, notice: 'Squabbler was successfully created.' }
        format.json { render :show, status: :created, location: @squabbler }
      else
        format.html { render :new }
        format.json { render json: @squabbler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /squabblers/1
  # PATCH/PUT /squabblers/1.json
  def update
    respond_to do |format|
      if @squabbler.update(squabbler_params)
        format.html { redirect_to @squabbler, notice: 'Squabbler was successfully updated.' }
        format.json { render :show, status: :ok, location: @squabbler }
      else
        format.html { render :edit }
        format.json { render json: @squabbler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /squabblers/1
  # DELETE /squabblers/1.json
  def destroy
    @squabbler.destroy
    respond_to do |format|
      format.html { redirect_to squabblers_url, notice: 'Squabbler was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_squabbler
      @squabbler = Squabbler.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def squabbler_params
      params.require(:squabbler).permit(:fname, :lname, :alias, :sole_squabbler, :team_squabbler, :judge, :twitter_handle, :facebook, :age, :country, :gender, :image)
    end
end
