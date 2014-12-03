class HotwingsController < ApplicationController
  before_action :set_hotwing, only: [:show, :edit, :update, :destroy]

  # GET /hotwings
  # GET /hotwings.json
  def index
    @hotwings = Hotwing.all
  end

  # GET /hotwings/1
  # GET /hotwings/1.json
  def show
  end

  # GET /hotwings/new
  def new
    @hotwing = Hotwing.new
  end

  # GET /hotwings/1/edit
  def edit
  end

  # POST /hotwings
  # POST /hotwings.json
  def create
    @hotwing = Hotwing.new(hotwing_params)

    respond_to do |format|
      if @hotwing.save
        format.html { redirect_to @hotwing, notice: 'Hotwing was successfully created.' }
        format.json { render :show, status: :created, location: @hotwing }
      else
        format.html { render :new }
        format.json { render json: @hotwing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hotwings/1
  # PATCH/PUT /hotwings/1.json
  def update
    respond_to do |format|
      if @hotwing.update(hotwing_params)
        format.html { redirect_to @hotwing, notice: 'Hotwing was successfully updated.' }
        format.json { render :show, status: :ok, location: @hotwing }
      else
        format.html { render :edit }
        format.json { render json: @hotwing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hotwings/1
  # DELETE /hotwings/1.json
  def destroy
    @hotwing.destroy
    respond_to do |format|
      format.html { redirect_to hotwings_url, notice: 'Hotwing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotwing
      @hotwing = Hotwing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hotwing_params
      params.require(:hotwing).permit(:sauce, :heat_index)
    end
end
  def welcome
    end
