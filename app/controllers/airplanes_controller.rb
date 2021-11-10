class AirplanesController < ApplicationController
  before_action :set_airplane, only: %i[ show edit update destroy ]

  # GET /airplanes or /airplanes.json
  def index
    @airplanes = Airplane.all
  end

  # GET /airplanes/1 or /airplanes/1.json
  def show
    @airplane = Airplane.find(params[:id])
  end
  #  find all the airplanes using their id and show it in the page

  # GET /airplanes/new
  def new
    @airplane = Airplane.new
  end

  # GET /airplanes/1/edit
  def edit
  end

  # POST /airplanes or /airplanes.json
  def create
    @airplane = Airplane.new(airplane_params)

    respond_to do |format|
      if @airplane.save
        format.html { redirect_to @airplane, notice: "Airplane was successfully created." }
        format.json { render :show, status: :created, location: @airplane }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @airplane.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /airplanes/1 or /airplanes/1.json
  def update
    respond_to do |format|
      if @airplane.update(airplane_params)
        format.html { redirect_to @airplane, notice: "Airplane was successfully updated." }
        format.json { render :show, status: :ok, location: @airplane }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @airplane.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /airplanes/1 or /airplanes/1.json
  def destroy
    @airplane.destroy
    respond_to do |format|
      format.html { redirect_to airplanes_url, notice: "Airplane was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_airplane
      @airplane = Airplane.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def airplane_params
      params.require(:airplane).permit(:rows, :columns, :name, :id)
    end
end
