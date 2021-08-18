require 'test_helper'

class PrisesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prise = prises(:one)
  end

  test "should get index" do
    get prises_url
    assert_response :success
  end

  test "should get new" do
    get new_prise_url
    assert_response :success
  end

  test "should create prise" do
    assert_difference('Prise.count') do
      post prises_url, params: { prise: { dia: @prise.dia, moment: @prise.moment, note: @prise.note, pulse: @prise.pulse, sys: @prise.sys } }
    end

    assert_redirected_to prise_url(Prise.last)
  end

  test "should show prise" do
    get prise_url(@prise)
    assert_response :success
  end

  test "should get edit" do
    get edit_prise_url(@prise)
    assert_response :success
  end

  test "should update prise" do
    patch prise_url(@prise), params: { prise: { dia: @prise.dia, moment: @prise.moment, note: @prise.note, pulse: @prise.pulse, sys: @prise.sys } }
    assert_redirected_to prise_url(@prise)
  end

  test "should destroy prise" do
    assert_difference('Prise.count', -1) do
      delete prise_url(@prise)
    end

    assert_redirected_to prises_url
  end
end
