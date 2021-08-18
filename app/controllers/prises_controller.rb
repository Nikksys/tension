class PrisesController < ApplicationController
  before_action :set_prise, only: %i[ show edit update destroy ]

  # GET /prises or /prises.json
  def index
    @prises = Prise.all
  end

  # GET /prises/1 or /prises/1.json
  def show
  end

  # GET /prises/new
  def new
    @prise = Prise.new
  end

  # GET /prises/1/edit
  def edit
  end

  # POST /prises or /prises.json
  def create
    @prise = Prise.new(prise_params)

    respond_to do |format|
      if @prise.save
        format.html { redirect_to prises_path, notice: "La prise de tension à bien été crée." }
        format.json { render :show, status: :created, location: @prise }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prises/1 or /prises/1.json
  def update
    respond_to do |format|
      if @prise.update(prise_params)
        format.html { redirect_to @prise, notice: "Prise was successfully updated." }
        format.json { render :show, status: :ok, location: @prise }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prises/1 or /prises/1.json
  def destroy
    @prise.destroy
    respond_to do |format|
      format.html { redirect_to prises_url, notice: "Prise was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prise
      @prise = Prise.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prise_params
      params.require(:prise).permit(:moment, :sys, :dia, :pulse, :note)
    end
end
