class RoomimagesController < ApplicationController
  before_action :set_roomimage, only: %i[ show edit update destroy ]

  # GET /roomimages or /roomimages.json
  def index
    @roomimages = Roomimage.all
  end

  # GET /roomimages/1 or /roomimages/1.json
  def show
  end

  # GET /roomimages/new
  def new
    @roomimage = Roomimage.new
  end

  # GET /roomimages/1/edit
  def edit
  end

  # POST /roomimages or /roomimages.json
  def create
    @roomimage = Roomimage.new(roomimage_params)

    respond_to do |format|
      if @roomimage.save
        format.html { redirect_to roomimage_url(@roomimage), notice: "Roomimage was successfully created." }
        format.json { render :show, status: :created, location: @roomimage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @roomimage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roomimages/1 or /roomimages/1.json
  def update
    respond_to do |format|
      if @roomimage.update(roomimage_params)
        format.html { redirect_to roomimage_url(@roomimage), notice: "Roomimage was successfully updated." }
        format.json { render :show, status: :ok, location: @roomimage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @roomimage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roomimages/1 or /roomimages/1.json
  def destroy
    @roomimage.destroy

    respond_to do |format|
      format.html { redirect_to roomimages_url, notice: "Roomimage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roomimage
      @roomimage = Roomimage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def roomimage_params
      params.require(:roomimage).permit(:name, :avatar_path)
    end
end
