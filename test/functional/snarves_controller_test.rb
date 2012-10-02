require 'test_helper'

class SnarvesControllerTest < ActionController::TestCase
  setup do
    @snarf = snarves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:snarves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create snarf" do
    assert_difference('Snarf.count') do
      post :create, snarf: { quote: @snarf.quote }
    end

    assert_redirected_to snarf_path(assigns(:snarf))
  end

  test "should show snarf" do
    get :show, id: @snarf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @snarf
    assert_response :success
  end

  test "should update snarf" do
    put :update, id: @snarf, snarf: { quote: @snarf.quote }
    assert_redirected_to snarf_path(assigns(:snarf))
  end

  test "should destroy snarf" do
    assert_difference('Snarf.count', -1) do
      delete :destroy, id: @snarf
    end

    assert_redirected_to snarves_path
  end
end
