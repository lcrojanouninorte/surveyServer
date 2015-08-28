require 'test_helper'

class CharacterizationsControllerTest < ActionController::TestCase
  setup do
    @characterization = characterizations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:characterizations)
  end

  test "should create characterization" do
    assert_difference('Characterization.count') do
      post :create, characterization: { p100: @characterization.p100, p10: @characterization.p10, p11: @characterization.p11, p12: @characterization.p12, p13: @characterization.p13, p14: @characterization.p14, p15: @characterization.p15, p16: @characterization.p16, p17: @characterization.p17, p18: @characterization.p18, p19: @characterization.p19, p1: @characterization.p1, p20: @characterization.p20, p21: @characterization.p21, p22: @characterization.p22, p23: @characterization.p23, p24: @characterization.p24, p25: @characterization.p25, p26: @characterization.p26, p27: @characterization.p27, p28: @characterization.p28, p29: @characterization.p29, p2: @characterization.p2, p30: @characterization.p30, p31: @characterization.p31, p32: @characterization.p32, p33: @characterization.p33, p34: @characterization.p34, p35: @characterization.p35, p36: @characterization.p36, p37: @characterization.p37, p38: @characterization.p38, p39: @characterization.p39, p3: @characterization.p3, p40: @characterization.p40, p41: @characterization.p41, p42: @characterization.p42, p43: @characterization.p43, p44: @characterization.p44, p45: @characterization.p45, p46: @characterization.p46, p47: @characterization.p47, p48: @characterization.p48, p49: @characterization.p49, p4: @characterization.p4, p50: @characterization.p50, p51: @characterization.p51, p52: @characterization.p52, p53: @characterization.p53, p54: @characterization.p54, p55: @characterization.p55, p56: @characterization.p56, p57: @characterization.p57, p58: @characterization.p58, p59: @characterization.p59, p5: @characterization.p5, p60: @characterization.p60, p61: @characterization.p61, p62: @characterization.p62, p63: @characterization.p63, p64: @characterization.p64, p65: @characterization.p65, p66: @characterization.p66, p67: @characterization.p67, p68: @characterization.p68, p69: @characterization.p69, p6: @characterization.p6, p70: @characterization.p70, p71: @characterization.p71, p72: @characterization.p72, p73: @characterization.p73, p74: @characterization.p74, p75: @characterization.p75, p76: @characterization.p76, p77: @characterization.p77, p78: @characterization.p78, p79: @characterization.p79, p7: @characterization.p7, p80: @characterization.p80, p81: @characterization.p81, p82: @characterization.p82, p83: @characterization.p83, p84: @characterization.p84, p85: @characterization.p85, p86: @characterization.p86, p87: @characterization.p87, p88: @characterization.p88, p89: @characterization.p89, p8: @characterization.p8, p90: @characterization.p90, p91: @characterization.p91, p92: @characterization.p92, p93: @characterization.p93, p94: @characterization.p94, p95: @characterization.p95, p96: @characterization.p96, p97: @characterization.p97, p98: @characterization.p98, p99: @characterization.p99, p9: @characterization.p9, user: @characterization.user }
    end

    assert_response 201
  end

  test "should show characterization" do
    get :show, id: @characterization
    assert_response :success
  end

  test "should update characterization" do
    put :update, id: @characterization, characterization: { p100: @characterization.p100, p10: @characterization.p10, p11: @characterization.p11, p12: @characterization.p12, p13: @characterization.p13, p14: @characterization.p14, p15: @characterization.p15, p16: @characterization.p16, p17: @characterization.p17, p18: @characterization.p18, p19: @characterization.p19, p1: @characterization.p1, p20: @characterization.p20, p21: @characterization.p21, p22: @characterization.p22, p23: @characterization.p23, p24: @characterization.p24, p25: @characterization.p25, p26: @characterization.p26, p27: @characterization.p27, p28: @characterization.p28, p29: @characterization.p29, p2: @characterization.p2, p30: @characterization.p30, p31: @characterization.p31, p32: @characterization.p32, p33: @characterization.p33, p34: @characterization.p34, p35: @characterization.p35, p36: @characterization.p36, p37: @characterization.p37, p38: @characterization.p38, p39: @characterization.p39, p3: @characterization.p3, p40: @characterization.p40, p41: @characterization.p41, p42: @characterization.p42, p43: @characterization.p43, p44: @characterization.p44, p45: @characterization.p45, p46: @characterization.p46, p47: @characterization.p47, p48: @characterization.p48, p49: @characterization.p49, p4: @characterization.p4, p50: @characterization.p50, p51: @characterization.p51, p52: @characterization.p52, p53: @characterization.p53, p54: @characterization.p54, p55: @characterization.p55, p56: @characterization.p56, p57: @characterization.p57, p58: @characterization.p58, p59: @characterization.p59, p5: @characterization.p5, p60: @characterization.p60, p61: @characterization.p61, p62: @characterization.p62, p63: @characterization.p63, p64: @characterization.p64, p65: @characterization.p65, p66: @characterization.p66, p67: @characterization.p67, p68: @characterization.p68, p69: @characterization.p69, p6: @characterization.p6, p70: @characterization.p70, p71: @characterization.p71, p72: @characterization.p72, p73: @characterization.p73, p74: @characterization.p74, p75: @characterization.p75, p76: @characterization.p76, p77: @characterization.p77, p78: @characterization.p78, p79: @characterization.p79, p7: @characterization.p7, p80: @characterization.p80, p81: @characterization.p81, p82: @characterization.p82, p83: @characterization.p83, p84: @characterization.p84, p85: @characterization.p85, p86: @characterization.p86, p87: @characterization.p87, p88: @characterization.p88, p89: @characterization.p89, p8: @characterization.p8, p90: @characterization.p90, p91: @characterization.p91, p92: @characterization.p92, p93: @characterization.p93, p94: @characterization.p94, p95: @characterization.p95, p96: @characterization.p96, p97: @characterization.p97, p98: @characterization.p98, p99: @characterization.p99, p9: @characterization.p9, user: @characterization.user }
    assert_response 204
  end

  test "should destroy characterization" do
    assert_difference('Characterization.count', -1) do
      delete :destroy, id: @characterization
    end

    assert_response 204
  end
end
