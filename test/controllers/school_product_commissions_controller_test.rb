require 'test_helper'

class SchoolProductCommissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @school_product_commission = school_product_commissions(:one)
  end

  test "should get index" do
    get school_product_commissions_url
    assert_response :success
  end

  test "should get new" do
    get new_school_product_commission_url
    assert_response :success
  end

  test "should create school_product_commission" do
    assert_difference('SchoolProductCommission.count') do
      post school_product_commissions_url, params: { school_product_commission: { commission: @school_product_commission.commission, product_id: @school_product_commission.product_id, school_id: @school_product_commission.school_id } }
    end

    assert_redirected_to school_product_commission_url(SchoolProductCommission.last)
  end

  test "should show school_product_commission" do
    get school_product_commission_url(@school_product_commission)
    assert_response :success
  end

  test "should get edit" do
    get edit_school_product_commission_url(@school_product_commission)
    assert_response :success
  end

  test "should update school_product_commission" do
    patch school_product_commission_url(@school_product_commission), params: { school_product_commission: { commission: @school_product_commission.commission, product_id: @school_product_commission.product_id, school_id: @school_product_commission.school_id } }
    assert_redirected_to school_product_commission_url(@school_product_commission)
  end

  test "should destroy school_product_commission" do
    assert_difference('SchoolProductCommission.count', -1) do
      delete school_product_commission_url(@school_product_commission)
    end

    assert_redirected_to school_product_commissions_url
  end
end
