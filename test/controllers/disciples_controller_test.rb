require 'test_helper'

class DisciplesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @disciple = disciples(:one)
  end

  test "should get index" do
    get disciples_url
    assert_response :success
  end

  test "should get new" do
    get new_disciple_url
    assert_response :success
  end

  test "should create disciple" do
    assert_difference('Disciple.count') do
      post disciples_url, params: { disciple: { discipler_id: @disciple.discipler_id, first_name: @disciple.first_name, last_name: @disciple.last_name } }
    end

    assert_redirected_to disciple_url(Disciple.last)
  end

  test "should show disciple" do
    get disciple_url(@disciple)
    assert_response :success
  end

  test "should get edit" do
    get edit_disciple_url(@disciple)
    assert_response :success
  end

  test "should update disciple" do
    patch disciple_url(@disciple), params: { disciple: { discipler_id: @disciple.discipler_id, first_name: @disciple.first_name, last_name: @disciple.last_name } }
    assert_redirected_to disciple_url(@disciple)
  end

  test "should destroy disciple" do
    assert_difference('Disciple.count', -1) do
      delete disciple_url(@disciple)
    end

    assert_redirected_to disciples_url
  end
end
