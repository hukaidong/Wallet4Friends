class MoneyTransfersController < ApplicationController
  before_action :set_money_transfer, only: %i[ show edit update destroy ]

  # GET /money_transfers or /money_transfers.json
  def index
    @money_transfers = MoneyTransfer.all
  end

  # GET /money_transfers/1 or /money_transfers/1.json
  def show
  end

  # GET /money_transfers/new
  def new
    @money_transfer = MoneyTransfer.new
  end

  # GET /money_transfers/1/edit
  def edit
  end

  # POST /money_transfers or /money_transfers.json
  def create
    @money_transfer = MoneyTransfer.new(money_transfer_params)

    respond_to do |format|
      if @money_transfer.save
        format.html { redirect_to @money_transfer, notice: "Money transfer was successfully created." }
        format.json { render :show, status: :created, location: @money_transfer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @money_transfer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /money_transfers/1 or /money_transfers/1.json
  def update
    respond_to do |format|
      if @money_transfer.update(money_transfer_params)
        format.html { redirect_to @money_transfer, notice: "Money transfer was successfully updated." }
        format.json { render :show, status: :ok, location: @money_transfer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @money_transfer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /money_transfers/1 or /money_transfers/1.json
  def destroy
    @money_transfer.destroy
    respond_to do |format|
      format.html { redirect_to money_transfers_url, notice: "Money transfer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_money_transfer
    @money_transfer = MoneyTransfer.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def money_transfer_params
    params.require(:money_transfer).permit(:memo, :amount)
  end
end
