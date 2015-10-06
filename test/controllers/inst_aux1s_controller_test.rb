require 'test_helper'

class InstAux1sControllerTest < ActionController::TestCase
  setup do
    @inst_aux1 = inst_aux1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inst_aux1s)
  end

  test "should create inst_aux1" do
    assert_difference('InstAux1.count') do
      post :create, inst_aux1: { created_at: @inst_aux1.created_at, id: @inst_aux1.id, p10: @inst_aux1.p10, p11: @inst_aux1.p11, p12: @inst_aux1.p12, p13: @inst_aux1.p13, p14: @inst_aux1.p14, p15: @inst_aux1.p15, p16: @inst_aux1.p16, p17: @inst_aux1.p17, p18: @inst_aux1.p18, p19: @inst_aux1.p19, p1: @inst_aux1.p1, p20: @inst_aux1.p20, p2: @inst_aux1.p2, p3: @inst_aux1.p3, p4: @inst_aux1.p4, p5: @inst_aux1.p5, p6: @inst_aux1.p6, p7: @inst_aux1.p7, p8: @inst_aux1.p8, p9: @inst_aux1.p9, updated_at: @inst_aux1.updated_at, user_id: @inst_aux1.user_id }
    end

    assert_response 201
  end

  test "should show inst_aux1" do
    get :show, id: @inst_aux1
    assert_response :success
  end

  test "should update inst_aux1" do
    put :update, id: @inst_aux1, inst_aux1: { created_at: @inst_aux1.created_at, id: @inst_aux1.id, p10: @inst_aux1.p10, p11: @inst_aux1.p11, p12: @inst_aux1.p12, p13: @inst_aux1.p13, p14: @inst_aux1.p14, p15: @inst_aux1.p15, p16: @inst_aux1.p16, p17: @inst_aux1.p17, p18: @inst_aux1.p18, p19: @inst_aux1.p19, p1: @inst_aux1.p1, p20: @inst_aux1.p20, p2: @inst_aux1.p2, p3: @inst_aux1.p3, p4: @inst_aux1.p4, p5: @inst_aux1.p5, p6: @inst_aux1.p6, p7: @inst_aux1.p7, p8: @inst_aux1.p8, p9: @inst_aux1.p9, updated_at: @inst_aux1.updated_at, user_id: @inst_aux1.user_id }
    assert_response 204
  end

  test "should destroy inst_aux1" do
    assert_difference('InstAux1.count', -1) do
      delete :destroy, id: @inst_aux1
    end

    assert_response 204
  end
end
