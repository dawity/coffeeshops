class GanjalocsController < ApplicationController
   http_basic_authenticate_with name: "$5v7m90+?su$", password: "@90ns*>/Wrt"
  before_action :set_ganjaloc, only: [:show, :edit, :update, :destroy]
   protect_from_forgery
  # GET /ganjalocs
  # GET /ganjalocs.json
    def index
      # BEGIN Simple search functionality was implemented by Dawit Haile
        if params[:search].present?
        @ganjalocs = Ganjaloc.near(params[:search], 10).order("created_at DESC")
        @ganjalocs if @ganjalocs.present?

        else
          @ganjalocs = Ganjaloc.all
        end
        # End of Simple search funct...

        @hash = Gmaps4rails.build_markers(@ganjalocs) do |ganjaloc, marker|
            marker.lat ganjaloc.latitude
            marker.lng ganjaloc.longitude
            marker.title ganjaloc.title
        end
        #@ganjalocs = @ganjalocs.order("title").page(params[:page]).per_page(4)
        @ganjalocs = @ganjalocs.page(params[:page]).per_page(4)
    end





  # GET /ganjalocs/1
  # GET /ganjalocs/1.json
  def show
  @ganjalocs=Ganjaloc.all
  end

  # GET /ganjalocs/new
  def new
    @ganjaloc = Ganjaloc.new
  end

  # GET /ganjalocs/1/edit
  def edit
  end

  # POST /ganjalocs
  # POST /ganjalocs.json
  def create
    @ganjaloc = Ganjaloc.new(ganjaloc_params)

    respond_to do |format|
      if @ganjaloc.save
        format.html { redirect_to @ganjaloc, notice: 'Ganjaloc was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ganjaloc }
      else
        format.html { render action: 'new' }
        format.json { render json: @ganjaloc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ganjalocs/1
  # PATCH/PUT /ganjalocs/1.json
  def update
    respond_to do |format|
      if @ganjaloc.update(ganjaloc_params)
        format.html { redirect_to @ganjaloc, notice: 'Ganjaloc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ganjaloc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ganjalocs/1
  # DELETE /ganjalocs/1.json
  def destroy
    @ganjaloc.destroy
    respond_to do |format|
      format.html { redirect_to ganjalocs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ganjaloc
      @ganjaloc = Ganjaloc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ganjaloc_params
      params.require(:ganjaloc).permit(:latitude, :longitude, :address, :description, :title)
    end
  end
