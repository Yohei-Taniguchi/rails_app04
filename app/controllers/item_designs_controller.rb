class ItemDesignsController < ApplicationController
  before_action :set_item_design, only: [:show, :edit, :update, :destroy]

  # GET /item_designs
  # GET /item_designs.json
  def index
    @item_designs = ItemDesign.all
  end

  # GET /item_designs/1
  # GET /item_designs/1.json
  def show
  end

  # GET /item_designs/new
  def new
    @item_design = ItemDesign.new
  end

  # GET /item_designs/1/edit
  def edit
  end

  # POST /item_designs
  # POST /item_designs.json
  def create
    @item_design = ItemDesign.new(item_design_params)

    respond_to do |format|
      if @item_design.save
        format.html { redirect_to @item_design, notice: 'Item design was successfully created.' }
        format.json { render :show, status: :created, location: @item_design }
      else
        format.html { render :new }
        format.json { render json: @item_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_designs/1
  # PATCH/PUT /item_designs/1.json
  def update
    respond_to do |format|
      if @item_design.update(item_design_params)
        format.html { redirect_to @item_design, notice: 'Item design was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_design }
      else
        format.html { render :edit }
        format.json { render json: @item_design.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_designs/1
  # DELETE /item_designs/1.json
  def destroy
    @item_design.destroy
    respond_to do |format|
      format.html { redirect_to item_designs_url, notice: 'Item design was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_design
      @item_design = ItemDesign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_design_params
      params.require(:item_design).permit(:item_cd, :yarn, :strech_rate, :ori_mr, :plan_width, :plan_repeart, :special_width, :special_repeart, :repeart_count, :process_type, :remarks, :lace_design_id)
    end
end
