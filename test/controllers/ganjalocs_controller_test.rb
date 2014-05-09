require 'test_helper'

class GanjalocsControllerTest < ActionController::TestCase
  setup do
    @ganjaloc = ganjalocs(:one)
    @update = {

      address: '1568 S Federal Blvd, 80204',
      description: 'Mile High Therapeutic',
      latitude: 39.7356724, 
      longitude: -105.0251356, 
      title: 'Altitude' 
   }
  end

    
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ganjalocs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ganjaloc" do
    assert_difference('Ganjaloc.count') do
      post :create, ganjaloc: @update 
    end

    assert_redirected_to ganjaloc_path(assigns(:ganjaloc))
  end

  test "should show ganjaloc" do
    get :show, id: @ganjaloc.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ganjaloc
    assert_response :success
  end

  test "should update ganjaloc" do
    patch :update, id: @ganjaloc, ganjaloc: @update
    assert_redirected_to ganjaloc_path(assigns(:ganjaloc))
  end

  test "should destroy ganjaloc" do
    assert_difference('Ganjaloc.count', -1) do
      delete :destroy, id: @ganjaloc
    end

    assert_redirected_to ganjalocs_path
  end
  
end
