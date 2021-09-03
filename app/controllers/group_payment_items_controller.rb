class GroupPaymentItemsController < ApplicationController
  before_action :set_group_payment_item, only: %i[ show edit update destroy ]

  # GET /group_payment_items or /group_payment_items.json
  def index
    @group_payment_items = GroupPaymentItem.all
  end

  # GET /group_payment_items/1 or /group_payment_items/1.json
  def show
  end

  # GET /group_payment_items/new
  def new
    @group_payment_item = GroupPaymentItem.new
  end

  # GET /group_payment_items/1/edit
  def edit
  end

  # POST /group_payment_items or /group_payment_items.json
  def create
    @group_payment_item = GroupPaymentItem.new(group_payment_item_params)

    respond_to do |format|
      if @group_payment_item.save
        format.html { redirect_to @group_payment_item, notice: "Group payment item was successfully created." }
        format.json { render :show, status: :created, location: @group_payment_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @group_payment_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_payment_items/1 or /group_payment_items/1.json
  def update
    respond_to do |format|
      if @group_payment_item.update(group_payment_item_params)
        format.html { redirect_to @group_payment_item, notice: "Group payment item was successfully updated." }
        format.json { render :show, status: :ok, location: @group_payment_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @group_payment_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_payment_items/1 or /group_payment_items/1.json
  def destroy
    @group_payment_item.destroy
    respond_to do |format|
      format.html { redirect_to group_payment_items_url, notice: "Group payment item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_group_payment_item
    @group_payment_item = GroupPaymentItem.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def group_payment_item_params
    params.require(:group_payment_item).permit(:status, :amount)
  end
end
