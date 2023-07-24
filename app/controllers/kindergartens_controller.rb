class KindergartensController < ApplicationController  
  before_action :authenticate_user!, only: [:new, :create,:index, :update]
  

  # GET /kindergartens or /kindergartens.json
  def index
    @kindergartens = current_user.kindergartens.page(params[:page]).per(2)
  end

  # GET /kindergartens/1 or /kindergartens/1.json
  def show
    @kindergarten = Kindergarten.find(params[:id])
  end

  # GET /kindergartens/new
  def new
    @kindergarten = Kindergarten.new
  end

  # GET /kindergartens/1/edit
  def edit
    @kindergarten = Kindergarten.find(params[:id])
  end
  

  # POST /kindergartens or /kindergartens.json
  def create
    @kindergarten = current_user.kindergartens.build(kindergarten_params)

    respond_to do |format|
      if @kindergarten.save
        format.html { redirect_to kindergarten_url(@kindergarten), notice: "Kindergarten was successfully created." }
        format.json { render :show, status: :created, location: @kindergarten }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kindergarten.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kindergartens/1 or /kindergartens/1.json
  def update
    @kindergarten = Kindergarten.find(params[:id])
    respond_to do |format|
      if @kindergarten.update(kindergarten_params)
        format.html { redirect_to kindergarten_url(@kindergarten), notice: "Kindergarten was successfully updated." }
        format.json { render :show, status: :ok, location: @kindergarten }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kindergarten.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kindergartens/1 or /kindergartens/1.json
  def destroy
    @kindergarten = Kindergarten.find(params[:id])
    @kindergarten.destroy

    respond_to do |format|
      format.html { redirect_to kindergartens_url, notice: "Kindergarten was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kindergarten
      @kindergarten = Kindergarten.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kindergarten_params
      params.require(:kindergarten).permit(:name, :description, :price, :phone, :email, :city_id, :photo, pet_ids: [])

    end
end
