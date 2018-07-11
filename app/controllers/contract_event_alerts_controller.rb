class ContractEventAlertsController < ApplicationController
  before_action :set_contract_event_alert, only: [:show, :edit, :update, :destroy]

  # GET /contract_event_alerts
  # GET /contract_event_alerts.json
  def index
    @contract_event_alerts = ContractEventAlert.all
  end

  # GET /contract_event_alerts/1
  # GET /contract_event_alerts/1.json
  def show
  end

  # GET /contract_event_alerts/new
  def new
    @contract_event_alert = ContractEventAlert.new
  end

  # GET /contract_event_alerts/1/edit
  def edit
  end

  # POST /contract_event_alerts
  # POST /contract_event_alerts.json
  def create
    @contract_event_alert = ContractEventAlert.new(contract_event_alert_params)

    respond_to do |format|
      if @contract_event_alert.save
        format.html { redirect_to @contract_event_alert, notice: 'Contract event alert was successfully created.' }
        format.json { render :show, status: :created, location: @contract_event_alert }
      else
        format.html { render :new }
        format.json { render json: @contract_event_alert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contract_event_alerts/1
  # PATCH/PUT /contract_event_alerts/1.json
  def update
    respond_to do |format|
      if @contract_event_alert.update(contract_event_alert_params)
        format.html { redirect_to @contract_event_alert, notice: 'Contract event alert was successfully updated.' }
        format.json { render :show, status: :ok, location: @contract_event_alert }
      else
        format.html { render :edit }
        format.json { render json: @contract_event_alert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_event_alerts/1
  # DELETE /contract_event_alerts/1.json
  def destroy
    @contract_event_alert.destroy
    respond_to do |format|
      format.html { redirect_to contract_event_alerts_url, notice: 'Contract event alert was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract_event_alert
      @contract_event_alert = ContractEventAlert.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contract_event_alert_params
      params.require(:contract_event_alert).permit(:contract_event_id, :titulo, :modified_at)
    end
end
