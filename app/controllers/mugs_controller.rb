class MugsController < ApplicationController
  before_action :set_mug, only: [:show, :edit, :update, :destroy]

  # GET /mugs
  # GET /mugs.json
  def index
    @mugs = Mug.all
  end

  # GET /mugs/1
  # GET /mugs/1.json
  def show
  end

  # GET /mugs/new
  def new
    @mug = Mug.new
  end

  # GET /mugs/1/edit
  def edit
  end

  # POST /mugs
  # POST /mugs.json
  def create
    @mug = Mug.new(mug_params)

    respond_to do |format|
      if @mug.save
        format.html { redirect_to @mug, notice: 'Mug was successfully created.' }
        format.json { render :show, status: :created, location: @mug }
      else
        format.html { render :new }
        format.json { render json: @mug.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mugs/1
  # PATCH/PUT /mugs/1.json
  def update
    respond_to do |format|
      if @mug.update(mug_params)
        format.html { redirect_to @mug, notice: 'Mug was successfully updated.' }
        format.json { render :show, status: :ok, location: @mug }
      else
        format.html { render :edit }
        format.json { render json: @mug.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mugs/1
  # DELETE /mugs/1.json
  def destroy
    @mug.destroy
    respond_to do |format|
      format.html { redirect_to mugs_url, notice: 'Mug was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mug
      @mug = Mug.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mug_params
      params.require(:mug).permit(:name, :description, :price)
    end
end
