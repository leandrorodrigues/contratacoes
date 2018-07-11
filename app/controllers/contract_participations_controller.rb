class ContractParticipationsController < ApplicationController
  before_action :set_contract_participation, only: [:show, :edit, :update, :destroy]

  # GET /contract_participations
  # GET /contract_participations.json
  def index
    @contract_participations = ContractParticipation.all
  end

  # GET /contract_participations/1
  # GET /contract_participations/1.json
  def show
  end

  # GET /contract_participations/new
  def new
    @contract_participation = ContractParticipation.new
  end

  # GET /contract_participations/1/edit
  def edit
  end

  # POST /contract_participations
  # POST /contract_participations.json
  def create
    @contract_participation = ContractParticipation.new(contract_participation_params)

    respond_to do |format|
      if @contract_participation.save
        format.html { redirect_to @contract_participation, notice: 'Contract participation was successfully created.' }
        format.json { render :show, status: :created, location: @contract_participation }
      else
        format.html { render :new }
        format.json { render json: @contract_participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contract_participations/1
  # PATCH/PUT /contract_participations/1.json
  def update
    respond_to do |format|
      if @contract_participation.update(contract_participation_params)
        format.html { redirect_to @contract_participation, notice: 'Contract participation was successfully updated.' }
        format.json { render :show, status: :ok, location: @contract_participation }
      else
        format.html { render :edit }
        format.json { render json: @contract_participation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_participations/1
  # DELETE /contract_participations/1.json
  def destroy
    @contract_participation.destroy
    respond_to do |format|
      format.html { redirect_to contract_participations_url, notice: 'Contract participation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract_participation
      @contract_participation = ContractParticipation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contract_participation_params
      params.require(:contract_participation).permit(:contract_id, :user_id)
    end
end
