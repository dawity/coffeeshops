require 'test_helper'

class GanjalocsControllerTest < ActionController::TestCase
  setup :initialize_ganjaloc
 
  # called after every single test
  def teardown
    @ganjaloc = nil
  end
  
    @update = {

      address: '5359 East Valley Boulevard, Los Angeles, California, United States',
      description: 'Vally and Csula',
      latitude: 34.07471719999999, 
      longitude: -118.1667513, 
      title: 'GreenBear' 
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




  private
 
    def initialize_ganjaloc
      @ganjaloc = ganjalocs(:one)
    end
end
