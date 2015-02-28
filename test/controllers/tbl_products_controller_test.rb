require 'test_helper'

class TblProductsControllerTest < ActionController::TestCase
  setup do
    @tbl_product = tbl_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tbl_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tbl_product" do
    assert_difference('TblProduct.count') do
      post :create, tbl_product: { ProductBrand: @tbl_product.ProductBrand, ProductCategory: @tbl_product.ProductCategory, ProductCode: @tbl_product.ProductCode, ProductName: @tbl_product.ProductName, ProductPrice: @tbl_product.ProductPrice }
    end

    assert_redirected_to tbl_product_path(assigns(:tbl_product))
  end

  test "should show tbl_product" do
    get :show, id: @tbl_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tbl_product
    assert_response :success
  end

  test "should update tbl_product" do
    patch :update, id: @tbl_product, tbl_product: { ProductBrand: @tbl_product.ProductBrand, ProductCategory: @tbl_product.ProductCategory, ProductCode: @tbl_product.ProductCode, ProductName: @tbl_product.ProductName, ProductPrice: @tbl_product.ProductPrice }
    assert_redirected_to tbl_product_path(assigns(:tbl_product))
  end

  test "should destroy tbl_product" do
    assert_difference('TblProduct.count', -1) do
      delete :destroy, id: @tbl_product
    end

    assert_redirected_to tbl_products_path
  end
end
