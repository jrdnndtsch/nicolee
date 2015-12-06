require 'test_helper'

class AboutNicoleesControllerTest < ActionController::TestCase
  setup do
    @about_nicolee = about_nicolees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:about_nicolees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create about_nicolee" do
    assert_difference('AboutNicolee.count') do
      post :create, about_nicolee: { description: @about_nicolee.description, photo: @about_nicolee.photo }
    end

    assert_redirected_to about_nicolee_path(assigns(:about_nicolee))
  end

  test "should show about_nicolee" do
    get :show, id: @about_nicolee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @about_nicolee
    assert_response :success
  end

  test "should update about_nicolee" do
    patch :update, id: @about_nicolee, about_nicolee: { description: @about_nicolee.description, photo: @about_nicolee.photo }
    assert_redirected_to about_nicolee_path(assigns(:about_nicolee))
  end

  test "should destroy about_nicolee" do
    assert_difference('AboutNicolee.count', -1) do
      delete :destroy, id: @about_nicolee
    end

    assert_redirected_to about_nicolees_path
  end
end
