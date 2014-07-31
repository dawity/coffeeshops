class CofeeLocsController < ApplicationController
  before_action :set_cofee_loc, only: [:show, :edit, :update, :destroy]

  # GET /cofee_locs
  # GET /cofee_locs.json
  def index
    @cofee_locs = CofeeLoc.all
  end

  # GET /cofee_locs/1
  # GET /cofee_locs/1.json
  def show
  end

  # GET /cofee_locs/new
  def new
    @cofee_loc = CofeeLoc.new
  end

  # GET /cofee_locs/1/edit
  def edit
  end

  # POST /cofee_locs
  # POST /cofee_locs.json
  def create
    @cofee_loc = CofeeLoc.new(cofee_loc_params)

    respond_to do |format|
      if @cofee_loc.save
        format.html { redirect_to @cofee_loc, notice: 'Cofee loc was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cofee_loc }
      else
        format.html { render action: 'new' }
        format.json { render json: @cofee_loc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cofee_locs/1
  # PATCH/PUT /cofee_locs/1.json
  def update
    respond_to do |format|
      if @cofee_loc.update(cofee_loc_params)
        format.html { redirect_to @cofee_loc, notice: 'Cofee loc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cofee_loc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cofee_locs/1
  # DELETE /cofee_locs/1.json
  def destroy
    @cofee_loc.destroy
    respond_to do |format|
      format.html { redirect_to cofee_locs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cofee_loc
      @cofee_loc = CofeeLoc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cofee_loc_params
      params.require(:cofee_loc).permit(:latitude, :longitude, :address, :description, :title)
    end
end
