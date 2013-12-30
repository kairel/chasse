class TypeGibiersController < ApplicationController
  before_action :set_type_gibier, only: [:show, :edit, :update, :destroy]

  # GET /type_gibiers
  # GET /type_gibiers.json
  def index
    @type_gibiers = TypeGibier.all
  end

  # GET /type_gibiers/1
  # GET /type_gibiers/1.json
  def show
  end

  # GET /type_gibiers/new
  def new
    @type_gibier = TypeGibier.new
  end

  # GET /type_gibiers/1/edit
  def edit
  end

  # POST /type_gibiers
  # POST /type_gibiers.json
  def create
    @type_gibier = TypeGibier.new(type_gibier_params)

    respond_to do |format|
      if @type_gibier.save
        format.html { redirect_to @type_gibier, notice: 'Type gibier was successfully created.' }
        format.json { render action: 'show', status: :created, location: @type_gibier }
      else
        format.html { render action: 'new' }
        format.json { render json: @type_gibier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_gibiers/1
  # PATCH/PUT /type_gibiers/1.json
  def update
    respond_to do |format|
      if @type_gibier.update(type_gibier_params)
        format.html { redirect_to @type_gibier, notice: 'Type gibier was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @type_gibier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_gibiers/1
  # DELETE /type_gibiers/1.json
  def destroy
    @type_gibier.destroy
    respond_to do |format|
      format.html { redirect_to type_gibiers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_gibier
      @type_gibier = TypeGibier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_gibier_params
      params.require(:type_gibier).permit(:name)
    end
end
