class KoansController < ApplicationController
  before_action :set_koan, only: [:show, :edit, :update, :destroy]

  # GET /koans
  # GET /koans.json
  def index
    @koans = Koan.all
  end

  # GET /koans/1
  # GET /koans/1.json
  def show
    @koans = Koan.all
  end

  # GET /koans/new
  def new
    @koans = Koan.all
    @koan = Koan.new
  end

  # GET /koans/1/edit
  def edit
    @koans = Koan.all
  end

  # POST /koans
  # POST /koans.json
  def create
    @koans = Koan.all
    @koan = Koan.new(koan_params)

    respond_to do |format|
      if @koan.save
        format.html { redirect_to @koan, notice: 'Koan was successfully created.' }
        format.json { render :show, status: :created, location: @koan }
      else
        format.html { render :new }
        format.json { render json: @koan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /koans/1
  # PATCH/PUT /koans/1.json
  def update
    @koans = Koan.all
    respond_to do |format|
      if @koan.update(koan_params)
        format.html { redirect_to @koan, notice: 'Koan was successfully updated.' }
        format.json { render :show, status: :ok, location: @koan }
      else
        format.html { render :edit }
        format.json { render json: @koan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /koans/1
  # DELETE /koans/1.json
  def destroy
    @koans = Koan.all
    @koan.destroy
    respond_to do |format|
      format.html { redirect_to koans_url, notice: 'Koan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_koan
      @koan = Koan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def koan_params
      params.require(:koan).permit(:title, :question, :solution)
    end
end
