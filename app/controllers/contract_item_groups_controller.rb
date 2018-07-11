class ContractItemGroupsController < ApplicationController
  before_action :set_contract_item_group, only: [:show, :edit, :update, :destroy]

  # GET /contract_item_groups
  # GET /contract_item_groups.json
  def index
    @contract_item_groups = ContractItemGroup.all
  end

  # GET /contract_item_groups/1
  # GET /contract_item_groups/1.json
  def show
  end

  # GET /contract_item_groups/new
  def new
    @contract_item_group = ContractItemGroup.new
  end

  # GET /contract_item_groups/1/edit
  def edit
  end

  # POST /contract_item_groups
  # POST /contract_item_groups.json
  def create
    @contract_item_group = ContractItemGroup.new(contract_item_group_params)

    respond_to do |format|
      if @contract_item_group.save
        format.html { redirect_to @contract_item_group, notice: 'Contract item group was successfully created.' }
        format.json { render :show, status: :created, location: @contract_item_group }
      else
        format.html { render :new }
        format.json { render json: @contract_item_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contract_item_groups/1
  # PATCH/PUT /contract_item_groups/1.json
  def update
    respond_to do |format|
      if @contract_item_group.update(contract_item_group_params)
        format.html { redirect_to @contract_item_group, notice: 'Contract item group was successfully updated.' }
        format.json { render :show, status: :ok, location: @contract_item_group }
      else
        format.html { render :edit }
        format.json { render json: @contract_item_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contract_item_groups/1
  # DELETE /contract_item_groups/1.json
  def destroy
    @contract_item_group.destroy
    respond_to do |format|
      format.html { redirect_to contract_item_groups_url, notice: 'Contract item group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contract_item_group
      @contract_item_group = ContractItemGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contract_item_group_params
      params.require(:contract_item_group).permit(:contract_id, :title, :number, :contracts_id)
    end
end
