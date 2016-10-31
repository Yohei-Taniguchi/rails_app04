require 'test_helper'

class ItemDesignsControllerTest < ActionController::TestCase
  setup do
    @item_design = item_designs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_designs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_design" do
    assert_difference('ItemDesign.count') do
      post :create, item_design: { item_cd: @item_design.item_cd, lace_design_id: @item_design.lace_design_id, ori_mr: @item_design.ori_mr, plan_repeart: @item_design.plan_repeart, plan_width: @item_design.plan_width, process_type: @item_design.process_type, remarks: @item_design.remarks, repeart_count: @item_design.repeart_count, special_repeart: @item_design.special_repeart, special_width: @item_design.special_width, strech_rate: @item_design.strech_rate, yarn: @item_design.yarn }
    end

    assert_redirected_to item_design_path(assigns(:item_design))
  end

  test "should show item_design" do
    get :show, id: @item_design
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_design
    assert_response :success
  end

  test "should update item_design" do
    patch :update, id: @item_design, item_design: { item_cd: @item_design.item_cd, lace_design_id: @item_design.lace_design_id, ori_mr: @item_design.ori_mr, plan_repeart: @item_design.plan_repeart, plan_width: @item_design.plan_width, process_type: @item_design.process_type, remarks: @item_design.remarks, repeart_count: @item_design.repeart_count, special_repeart: @item_design.special_repeart, special_width: @item_design.special_width, strech_rate: @item_design.strech_rate, yarn: @item_design.yarn }
    assert_redirected_to item_design_path(assigns(:item_design))
  end

  test "should destroy item_design" do
    assert_difference('ItemDesign.count', -1) do
      delete :destroy, id: @item_design
    end

    assert_redirected_to item_designs_path
  end
end
