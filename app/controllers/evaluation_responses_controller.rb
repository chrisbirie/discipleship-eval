class EvaluationResponsesController < ApplicationController
  before_action :set_evaluation_response, only: [:show, :edit, :update, :destroy]

  # GET /evaluation_responses
  # GET /evaluation_responses.json
  def index
    @evaluation_responses = EvaluationResponse.all
  end

  # GET /evaluation_responses/1
  # GET /evaluation_responses/1.json
  def show
  end

  # GET /evaluation_responses/new
  def new
    @evaluation_response = EvaluationResponse.new
  end

  # GET /evaluation_responses/1/edit
  def edit
  end

  # POST /evaluation_responses
  # POST /evaluation_responses.json
  def create
    @evaluation_response = EvaluationResponse.new(evaluation_response_params)

    respond_to do |format|
      if @evaluation_response.save
        format.html { redirect_to @evaluation_response, notice: 'Evaluation response was successfully created.' }
        format.json { render :show, status: :created, location: @evaluation_response }
      else
        format.html { render :new }
        format.json { render json: @evaluation_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaluation_responses/1
  # PATCH/PUT /evaluation_responses/1.json
  def update
    respond_to do |format|
      if @evaluation_response.update(evaluation_response_params)
        format.html { redirect_to @evaluation_response, notice: 'Evaluation response was successfully updated.' }
        format.json { render :show, status: :ok, location: @evaluation_response }
      else
        format.html { render :edit }
        format.json { render json: @evaluation_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluation_responses/1
  # DELETE /evaluation_responses/1.json
  def destroy
    @evaluation_response.destroy
    respond_to do |format|
      format.html { redirect_to evaluation_responses_url, notice: 'Evaluation response was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaluation_response
      @evaluation_response = EvaluationResponse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evaluation_response_params
      params.require(:evaluation_response).permit(:evaluation_id, :question_id, :response)
    end
end
