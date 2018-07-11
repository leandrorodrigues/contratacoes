class ContractItemsController < ApplicationController
  before_action :set_contract_item, only: [:show, :edit, :update, :destroy]

  # GET /contract_items
  # GET /contract_items.json
  def index
    @contract_items = ContractItem.all
  end

  # GET /contract_items/1
  # GET /contract_items/1.json
  def show
  end

  # GET /contract_items/new
  def new
    @contract_item = ContractItem.new
  end

  # GET /contract_items/1/edit
  def edit
  end

  # POST /contract_items
  # POST /contract_items.json
  def create
    @contract_item = ContractItem.new(contract_item_params)

    respond_to do |format|
      if @contract_item.save
        format.html { redirect_to @contract_item, notice: 'Contract item was successfully created.' }
        format.json { render :show, status: :created, location: @contract_item }
      else
        format.html { render :new }
        format.json { render json: @contract_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contract_items/1
  # PATCH/PUT /contract_items/1.json
  def update
    respond_to do |format|
      if @contract_item.update(contract_item_params)
        format.html { redirect_to @contract_item, notice: 'Contract item was successfully updated.' }
        format.json { render :show, status: :ok, location: @contract_item }
      else
        format.html { render :edit }
        format.json { render json: @contract_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_items/1
  # DELETE /contract_items/1.json
  def destroy
    @contract_item.destroy
    respond_to do |format|
      format.html { redirect_to contract_items_url, notice: 'Contract item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract_item
      @contract_item = ContractItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contract_item_params
      params.require(:contract_item).permit(:number, :title, :description, :quantity, :unity_value, :total_value, :modified_at, :contract_item_group_id)
    end
end
