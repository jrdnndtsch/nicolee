class AboutNicoleesController < ApplicationController
  before_action :set_about_nicolee, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, :except => [:index]
  # GET /about_nicolees
  # GET /about_nicolees.json
  def index
    @about_nicolees = AboutNicolee.all
  end

  # GET /about_nicolees/1
  # GET /about_nicolees/1.json
  def show
  end

  # GET /about_nicolees/new
  def new
    @about_nicolee = AboutNicolee.new
  end

  # GET /about_nicolees/1/edit
  def edit
  end

  # POST /about_nicolees
  # POST /about_nicolees.json
  def create
    @about_nicolee = AboutNicolee.new(about_nicolee_params)

    respond_to do |format|
      if @about_nicolee.save
        format.html { redirect_to @about_nicolee, notice: 'About nicolee was successfully created.' }
        format.json { render :show, status: :created, location: @about_nicolee }
      else
        format.html { render :new }
        format.json { render json: @about_nicolee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /about_nicolees/1
  # PATCH/PUT /about_nicolees/1.json
  def update
    respond_to do |format|
      if @about_nicolee.update(about_nicolee_params)
        format.html { redirect_to @about_nicolee, notice: 'About nicolee was successfully updated.' }
        format.json { render :show, status: :ok, location: @about_nicolee }
      else
        format.html { render :edit }
        format.json { render json: @about_nicolee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /about_nicolees/1
  # DELETE /about_nicolees/1.json
  def destroy
    @about_nicolee.destroy
    respond_to do |format|
      format.html { redirect_to about_nicolees_url, notice: 'About nicolee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_about_nicolee
      @about_nicolee = AboutNicolee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def about_nicolee_params
      params.require(:about_nicolee).permit(:description, :photo)
    end
end
