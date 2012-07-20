require 'test_helper'

class SecondpagesControllerTest < ActionController::TestCase
  setup do
    @secondpage = secondpages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:secondpages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create secondpage" do
    assert_difference('Secondpage.count') do
      post :create, secondpage: { classname: @secondpage.classname, rollnumber: @secondpage.rollnumber }
    end

    assert_redirected_to secondpage_path(assigns(:secondpage))
  end

  test "should show secondpage" do
    get :show, id: @secondpage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @secondpage
    assert_response :success
  end

  test "should update secondpage" do
    put :update, id: @secondpage, secondpage: { classname: @secondpage.classname, rollnumber: @secondpage.rollnumber }
    assert_redirected_to secondpage_path(assigns(:secondpage))
  end

  test "should destroy secondpage" do
    assert_difference('Secondpage.count', -1) do
      delete :destroy, id: @secondpage
    end

    assert_redirected_to secondpages_path
  end
end
