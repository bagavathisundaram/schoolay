class SchoolProductCommissionsController < ApplicationController
  before_action :set_school_product_commission, only: [:show, :edit, :update, :destroy]

  # GET /school_product_commissions
  # GET /school_product_commissions.json
  def index
    @school_product_commissions = SchoolProductCommission.all
  end

  # GET /school_product_commissions/1
  # GET /school_product_commissions/1.json
  def show
  end

  # GET /school_product_commissions/new
  def new
    @school_product_commission = SchoolProductCommission.new
  end

  # GET /school_product_commissions/1/edit
  def edit
  end

  # POST /school_product_commissions
  # POST /school_product_commissions.json
  def create
    @school_product_commission = SchoolProductCommission.new(school_product_commission_params)

    respond_to do |format|
      if @school_product_commission.save
        format.html { redirect_to @school_product_commission, notice: 'School product commission was successfully created.' }
        format.json { render :show, status: :created, location: @school_product_commission }
      else
        format.html { render :new }
        format.json { render json: @school_product_commission.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /school_product_commissions/1
  # PATCH/PUT /school_product_commissions/1.json
  def update
    respond_to do |format|
      if @school_product_commission.update(school_product_commission_params)
        format.html { redirect_to @school_product_commission, notice: 'School product commission was successfully updated.' }
        format.json { render :show, status: :ok, location: @school_product_commission }
      else
        format.html { render :edit }
        format.json { render json: @school_product_commission.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /school_product_commissions/1
  # DELETE /school_product_commissions/1.json
  def destroy
    @school_product_commission.destroy
    respond_to do |format|
      format.html { redirect_to school_product_commissions_url, notice: 'School product commission was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school_product_commission
      @school_product_commission = SchoolProductCommission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_product_commission_params
      params.require(:school_product_commission).permit(:school_id, :product_id, :commission)
    end
end
