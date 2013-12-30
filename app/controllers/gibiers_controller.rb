class GibiersController < ApplicationController
  before_action :set_gibier, only: [:show, :edit, :update, :destroy]

  # GET /gibiers
  # GET /gibiers.json
  def index
    @gibiers = Gibier.all
  end

  # GET /gibiers/1
  # GET /gibiers/1.json
  def show
  end

  # GET /gibiers/new
  def new
    @gibier = Gibier.new
  end

  # GET /gibiers/1/edit
  def edit
  end

  # POST /gibiers
  # POST /gibiers.json
  def create
    @gibier = Gibier.new(gibier_params)

    respond_to do |format|
      if @gibier.save
        format.html { redirect_to @gibier, notice: 'Gibier was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gibier }
      else
        format.html { render action: 'new' }
        format.json { render json: @gibier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gibiers/1
  # PATCH/PUT /gibiers/1.json
  def update
    respond_to do |format|
      if @gibier.update(gibier_params)
        format.html { redirect_to @gibier, notice: 'Gibier was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gibier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gibiers/1
  # DELETE /gibiers/1.json
  def destroy
    @gibier.destroy
    respond_to do |format|
      format.html { redirect_to gibiers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gibier
      @gibier = Gibier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gibier_params
      params.require(:gibier).permit(:name, :icon, :type_gibier)
    end
end
