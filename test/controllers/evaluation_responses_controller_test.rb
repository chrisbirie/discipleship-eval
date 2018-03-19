require 'test_helper'

class EvaluationResponsesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evaluation_response = evaluation_responses(:one)
  end

  test "should get index" do
    get evaluation_responses_url
    assert_response :success
  end

  test "should get new" do
    get new_evaluation_response_url
    assert_response :success
  end

  test "should create evaluation_response" do
    assert_difference('EvaluationResponse.count') do
      post evaluation_responses_url, params: { evaluation_response: { evaluation_id: @evaluation_response.evaluation_id, question_id: @evaluation_response.question_id, response: @evaluation_response.response } }
    end

    assert_redirected_to evaluation_response_url(EvaluationResponse.last)
  end

  test "should show evaluation_response" do
    get evaluation_response_url(@evaluation_response)
    assert_response :success
  end

  test "should get edit" do
    get edit_evaluation_response_url(@evaluation_response)
    assert_response :success
  end

  test "should update evaluation_response" do
    patch evaluation_response_url(@evaluation_response), params: { evaluation_response: { evaluation_id: @evaluation_response.evaluation_id, question_id: @evaluation_response.question_id, response: @evaluation_response.response } }
    assert_redirected_to evaluation_response_url(@evaluation_response)
  end

  test "should destroy evaluation_response" do
    assert_difference('EvaluationResponse.count', -1) do
      delete evaluation_response_url(@evaluation_response)
    end

    assert_redirected_to evaluation_responses_url
  end
end
