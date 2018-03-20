class DisciplesController < ApplicationController
  before_action :set_disciple, only: [:show, :edit, :update, :destroy]

  # GET /disciples
  # GET /disciples.json
  def index
    @disciples = Disciple.all
  end

  # GET /disciples/1
  # GET /disciples/1.json
  def show
  end

  # GET /disciples/new
  def new
    @disciple = Disciple.new
  end

  # GET /disciples/1/edit
  def edit
  end

  # POST /disciples
  # POST /disciples.json
  def create
    @disciple = Disciple.new(disciple_params)

    respond_to do |format|
      if @disciple.save
        format.html { redirect_to @disciple, notice: 'Disciple was successfully created.' }
        format.json { render :show, status: :created, location: @disciple }
      else
        format.html { render :new }
        format.json { render json: @disciple.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /disciples/1
  # PATCH/PUT /disciples/1.json
  def update
    respond_to do |format|
      if @disciple.update(disciple_params)
        format.html { redirect_to @disciple, notice: 'Disciple was successfully updated.' }
        format.json { render :show, status: :ok, location: @disciple }
      else
        format.html { render :edit }
        format.json { render json: @disciple.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disciples/1
  # DELETE /disciples/1.json
  def destroy
    @disciple.destroy
    respond_to do |format|
      format.html { redirect_to disciples_url, notice: 'Disciple was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_disciple
      @disciple = Disciple.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def disciple_params
      params.require(:disciple).permit(:first_name, :last_name, :discipler_id)
    end
end
