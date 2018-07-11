class ContractEventsController < ApplicationController
  before_action :set_contract_event, only: [:show, :edit, :update, :destroy]

  # GET /contract_events
  # GET /contract_events.json
  def index
    @contract_events = ContractEvent.all
  end

  # GET /contract_events/1
  # GET /contract_events/1.json
  def show
  end

  # GET /contract_events/new
  def new
    @contract_event = ContractEvent.new
  end

  # GET /contract_events/1/edit
  def edit
  end

  # POST /contract_events
  # POST /contract_events.json
  def create
    @contract_event = ContractEvent.new(contract_event_params)

    respond_to do |format|
      if @contract_event.save
        format.html { redirect_to @contract_event, notice: 'Contract event was successfully created.' }
        format.json { render :show, status: :created, location: @contract_event }
      else
        format.html { render :new }
        format.json { render json: @contract_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contract_events/1
  # PATCH/PUT /contract_events/1.json
  def update
    respond_to do |format|
      if @contract_event.update(contract_event_params)
        format.html { redirect_to @contract_event, notice: 'Contract event was successfully updated.' }
        format.json { render :show, status: :ok, location: @contract_event }
      else
        format.html { render :edit }
        format.json { render json: @contract_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_events/1
  # DELETE /contract_events/1.json
  def destroy
    @contract_event.destroy
    respond_to do |format|
      format.html { redirect_to contract_events_url, notice: 'Contract event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract_event
      @contract_event = ContractEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contract_event_params
      params.require(:contract_event).permit(:contract_id, :title, :modified_at)
    end
end
