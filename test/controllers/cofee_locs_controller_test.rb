require 'test_helper'

class CofeeLocsControllerTest < ActionController::TestCase
  setup do
    @cofee_loc = cofee_locs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cofee_locs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cofee_loc" do
    assert_difference('CofeeLoc.count') do
      post :create, cofee_loc: { address: @cofee_loc.address, description: @cofee_loc.description, latitude: @cofee_loc.latitude, longitude: @cofee_loc.longitude, title: @cofee_loc.title }
    end

    assert_redirected_to cofee_loc_path(assigns(:cofee_loc))
  end

  test "should show cofee_loc" do
    get :show, id: @cofee_loc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cofee_loc
    assert_response :success
  end

  test "should update cofee_loc" do
    patch :update, id: @cofee_loc, cofee_loc: { address: @cofee_loc.address, description: @cofee_loc.description, latitude: @cofee_loc.latitude, longitude: @cofee_loc.longitude, title: @cofee_loc.title }
    assert_redirected_to cofee_loc_path(assigns(:cofee_loc))
  end

  test "should destroy cofee_loc" do
    assert_difference('CofeeLoc.count', -1) do
      delete :destroy, id: @cofee_loc
    end

    assert_redirected_to cofee_locs_path
  end
end
