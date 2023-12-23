class ShipmentDetailsController < ApplicationController
  before_action :set_shipment_detail, only: %i[ show edit update destroy ]

  # GET /shipment_details or /shipment_details.json
  def index
    @shipment_details = ShipmentDetail.all
  end

  # GET /shipment_details/1 or /shipment_details/1.json
  def show
  end

  # GET /shipment_details/new
  def new
    @shipment_detail = ShipmentDetail.new
  end

  # GET /shipment_details/1/edit
  def edit
  end

  # POST /shipment_details or /shipment_details.json
  def create
    @shipment_detail = ShipmentDetail.new(shipment_detail_params)

    respond_to do |format|
      if @shipment_detail.save
        format.html { redirect_to shipment_detail_url(@shipment_detail), notice: "Shipment detail was successfully created." }
        format.json { render :show, status: :created, location: @shipment_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shipment_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shipment_details/1 or /shipment_details/1.json
  def update
    respond_to do |format|
      if @shipment_detail.update(shipment_detail_params)
        format.html { redirect_to shipment_detail_url(@shipment_detail), notice: "Shipment detail was successfully updated." }
        format.json { render :show, status: :ok, location: @shipment_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shipment_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shipment_details/1 or /shipment_details/1.json
  def destroy
    @shipment_detail.destroy

    respond_to do |format|
      format.html { redirect_to shipment_details_url, notice: "Shipment detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shipment_detail
      @shipment_detail = ShipmentDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shipment_detail_params
      params.require(:shipment_detail).permit(:shipment_id, :book_id, :quantity)
    end
end
