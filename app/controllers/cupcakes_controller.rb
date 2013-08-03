class CupcakesController < ApplicationController
  before_action :set_cupcake, only: [:show, :edit, :update, :destroy]

  # GET /cupcakes
  # GET /cupcakes.json
  def index
    @cupcakes = Cupcake.all
  end

  # GET /cupcakes/1
  # GET /cupcakes/1.json
  def show
  end

  # GET /cupcakes/new
  def new
    @cupcake = Cupcake.new
  end

  # GET /cupcakes/1/edit
  def edit
  end

  # POST /cupcakes
  # POST /cupcakes.json
  def create
    @cupcake = Cupcake.new(cupcake_params)

    respond_to do |format|
      if @cupcake.save
        format.html { redirect_to @cupcake, notice: 'Cupcake was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cupcake }
      else
        format.html { render action: 'new' }
        format.json { render json: @cupcake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cupcakes/1
  # PATCH/PUT /cupcakes/1.json
  def update
    respond_to do |format|
      if @cupcake.update(cupcake_params)
        format.html { redirect_to @cupcake, notice: 'Cupcake was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cupcake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cupcakes/1
  # DELETE /cupcakes/1.json
  def destroy
    @cupcake.destroy
    respond_to do |format|
      format.html { redirect_to cupcakes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cupcake
      @cupcake = Cupcake.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cupcake_params
      params.require(:cupcake).permit(:flavour, :price)
    end
end
