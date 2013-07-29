require 'test_helper'

class RequestsControllerTest < ActionController::TestCase
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post :create, request: { request_brief_description: @request.request_brief_description, request_colours: @request.request_colours, request_comments: @request.request_comments, request_confirmed_comp_date2: @request.request_confirmed_comp_date2, request_confirmed_comp_date3: @request.request_confirmed_comp_date3, request_confirmed_comp_date4: @request.request_confirmed_comp_date4, request_confirmed_comp_date5: @request.request_confirmed_comp_date5, request_confirmed_comp_date6: @request.request_confirmed_comp_date6, request_confirmed_comp_date: @request.request_confirmed_comp_date, request_confirmed_comp_date: @request.request_confirmed_comp_date, request_date: @request.request_date, request_date_required: @request.request_date_required, request_date_sent: @request.request_date_sent, request_description: @request.request_description, request_received: @request.request_received, request_received_date: @request.request_received_date, request_required_for: @request.request_required_for, request_smd_number: @request.request_smd_number, request_supplier: @request.request_supplier, request_tracking_number: @request.request_tracking_number, tag: @request.tag }
    end

    assert_redirected_to request_path(assigns(:request))
  end

  test "should show request" do
    get :show, id: @request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @request
    assert_response :success
  end

  test "should update request" do
    patch :update, id: @request, request: { request_brief_description: @request.request_brief_description, request_colours: @request.request_colours, request_comments: @request.request_comments, request_confirmed_comp_date2: @request.request_confirmed_comp_date2, request_confirmed_comp_date3: @request.request_confirmed_comp_date3, request_confirmed_comp_date4: @request.request_confirmed_comp_date4, request_confirmed_comp_date5: @request.request_confirmed_comp_date5, request_confirmed_comp_date6: @request.request_confirmed_comp_date6, request_confirmed_comp_date: @request.request_confirmed_comp_date, request_confirmed_comp_date: @request.request_confirmed_comp_date, request_date: @request.request_date, request_date_required: @request.request_date_required, request_date_sent: @request.request_date_sent, request_description: @request.request_description, request_received: @request.request_received, request_received_date: @request.request_received_date, request_required_for: @request.request_required_for, request_smd_number: @request.request_smd_number, request_supplier: @request.request_supplier, request_tracking_number: @request.request_tracking_number, tag: @request.tag }
    assert_redirected_to request_path(assigns(:request))
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete :destroy, id: @request
    end

    assert_redirected_to requests_path
  end
end
