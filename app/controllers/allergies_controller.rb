class AllergiesController < ApplicationController
  before_action :set_allergy, only: %i[ show edit update destroy ]

  # GET /allergies or /allergies.json
  def index
    @allergies = Allergy.all
  end

  # GET /allergies/1 or /allergies/1.json
  def show
    @allergic_students = @allergy.students
  end

  # GET /allergies/new
  def new
    @allergy = Allergy.new
  end

  # GET /allergies/1/edit
  def edit
  end

  # POST /allergies or /allergies.json
  def create
    @allergy = Allergy.new(allergy_params)

    respond_to do |format|
      if @allergy.save
        format.html { redirect_to @allergy, notice: "Allergy was successfully created." }
        format.json { render :show, status: :created, location: @allergy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @allergy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /allergies/1 or /allergies/1.json
  def update
    respond_to do |format|
      if @allergy.update(allergy_params)
        format.html { redirect_to @allergy, notice: "Allergy was successfully updated." }
        format.json { render :show, status: :ok, location: @allergy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @allergy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /allergies/1 or /allergies/1.json
  def destroy
    @allergy.destroy
    respond_to do |format|
      format.html { redirect_to allergies_url, notice: "Allergy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_allergy
      @allergy = Allergy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def allergy_params
      params.require(:allergy).permit(:food)
    end
end
