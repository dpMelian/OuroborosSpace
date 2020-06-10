class PlanetasController < ApplicationController
  before_action :set_planeta, only: [:show, :edit, :update, :destroy]

  # GET /planetas
  # GET /planetas.json
  def index
    @planetas = Planeta.all
  end

  # GET /planetas/1
  # GET /planetas/1.json
  def show
  end

  # GET /planetas/new
  def new
    @planeta = Planeta.new
  end

  # GET /planetas/1/edit
  def edit
  end

  # POST /planetas
  # POST /planetas.json
  def create
    @planeta = Planeta.new(planeta_params)

    respond_to do |format|
      if @planeta.save
        format.html { redirect_to @planeta, notice: 'Planeta creado correctamente.' }
        format.json { render :show, status: :created, location: @planeta }
      else
        format.html { render :new }
        format.json { render json: @planeta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /planetas/1
  # PATCH/PUT /planetas/1.json
  def update
    respond_to do |format|
      if @planeta.update(planeta_params)
        format.html { redirect_to @planeta, notice: 'Planeta actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @planeta }
      else
        format.html { render :edit }
        format.json { render json: @planeta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /planetas/1
  # DELETE /planetas/1.json
  def destroy
    @planeta.destroy
    respond_to do |format|
      format.html { redirect_to planetas_url, notice: 'Planeta eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planeta
      @planeta = Planeta.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def planeta_params
      params.require(:planeta).permit(:nombre, :foto, :fecha_descubrimiento, :masa_en_tierras, :periodo_rotacion, :periodo_orbital, :gravedad)
    end
end
