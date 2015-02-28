require 'test_helper'

class TblCategoriesControllerTest < ActionController::TestCase
  setup do
    @tbl_category = tbl_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tbl_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tbl_category" do
    assert_difference('TblCategory.count') do
      post :create, tbl_category: { CategoryName: @tbl_category.CategoryName, Description: @tbl_category.Description }
    end

    assert_redirected_to tbl_category_path(assigns(:tbl_category))
  end

  test "should show tbl_category" do
    get :show, id: @tbl_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tbl_category
    assert_response :success
  end

  test "should update tbl_category" do
    patch :update, id: @tbl_category, tbl_category: { CategoryName: @tbl_category.CategoryName, Description: @tbl_category.Description }
    assert_redirected_to tbl_category_path(assigns(:tbl_category))
  end

  test "should destroy tbl_category" do
    assert_difference('TblCategory.count', -1) do
      delete :destroy, id: @tbl_category
    end

    assert_redirected_to tbl_categories_path
  end
end
