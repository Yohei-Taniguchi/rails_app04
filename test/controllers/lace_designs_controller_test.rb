require 'test_helper'

class LaceDesignsControllerTest < ActionController::TestCase
  setup do
    @lace_design = lace_designs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lace_designs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lace_design" do
    assert_difference('LaceDesign.count') do
      post :create, lace_design: { carry: @lace_design.carry, design_code: @lace_design.design_code, design_no: @lace_design.design_no, drafman: @lace_design.drafman, fin_mr: @lace_design.fin_mr, halfcut: @lace_design.halfcut, honsu: @lace_design.honsu, lace_design_no: @lace_design.lace_design_no, lace_type: @lace_design.lace_type, mc_type: @lace_design.mc_type, nominal_width: @lace_design.nominal_width, point: @lace_design.point, remarks: @lace_design.remarks, rs: @lace_design.rs, sherring: @lace_design.sherring, skecher: @lace_design.skecher, use: @lace_design.use }
    end

    assert_redirected_to lace_design_path(assigns(:lace_design))
  end

  test "should show lace_design" do
    get :show, id: @lace_design
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lace_design
    assert_response :success
  end

  test "should update lace_design" do
    patch :update, id: @lace_design, lace_design: { carry: @lace_design.carry, design_code: @lace_design.design_code, design_no: @lace_design.design_no, drafman: @lace_design.drafman, fin_mr: @lace_design.fin_mr, halfcut: @lace_design.halfcut, honsu: @lace_design.honsu, lace_design_no: @lace_design.lace_design_no, lace_type: @lace_design.lace_type, mc_type: @lace_design.mc_type, nominal_width: @lace_design.nominal_width, point: @lace_design.point, remarks: @lace_design.remarks, rs: @lace_design.rs, sherring: @lace_design.sherring, skecher: @lace_design.skecher, use: @lace_design.use }
    assert_redirected_to lace_design_path(assigns(:lace_design))
  end

  test "should destroy lace_design" do
    assert_difference('LaceDesign.count', -1) do
      delete :destroy, id: @lace_design
    end

    assert_redirected_to lace_designs_path
  end
end
