class LaceDesignsController < ApplicationController
  before_action :set_lace_design, only: [:show, :edit, :update, :destroy]

  # GET /lace_designs
  # GET /lace_designs.json
  def index
    @lace_designs = LaceDesign.all
  end

  # GET /lace_designs/1
  # GET /lace_designs/1.json
  def show
  end

  # GET /lace_designs/new
  def new
    @lace_design = LaceDesign.new
    @lace_design.item_designs.build
  end

  # GET /lace_designs/1/edit
  def edit
  end

  # POST /lace_designs
  # POST /lace_designs.json
  def create
    @lace_design = LaceDesign.new(lace_design_params)

    respond_to do |format|
      if @lace_design.save
        format.html { redirect_to @lace_design, notice: 'Lace design was successfully created.' }
        format.json { render :show, status: :created, location: @lace_design }
      else
        format.html { render :new }
        format.json { render json: @lace_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lace_designs/1
  # PATCH/PUT /lace_designs/1.json
  def update
    respond_to do |format|
      if @lace_design.update(lace_design_params)
        format.html { redirect_to @lace_design, notice: 'Lace design was successfully updated.' }
        format.json { render :show, status: :ok, location: @lace_design }
      else
        format.html { render :edit }
        format.json { render json: @lace_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lace_designs/1
  # DELETE /lace_designs/1.json
  def destroy
    @lace_design.destroy
    respond_to do |format|
      format.html { redirect_to lace_designs_url, notice: 'Lace design was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lace_design
      @lace_design = LaceDesign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lace_design_params
      params.require(:lace_design).permit(
        :lace_design_no, :use, :lace_type, :rs, :carry, :point, :nominal_width, :fin_mr, :mc_type, :honsu, :sherring, :halfcut, :skecher, :design_code, :design_no, :drafman, :remarks,
        item_designs_attributes: [:item_cd, :yarn, :strech_rate, :ori_mr, :plan_width, :plan_repeart, :special_width, :special_repeart, :repeart_count, :process_type, :remarks, :lace_design_id]
        )
    end
end
