class ViewProductsController < ApplicationController
  def index
    @infoCategory=TblCategory.find_by_CategoryID(params[:id])
    @CategoryName=@infoCategory.CategoryName
    @info=TblProduct.where(ProductCategory: @CategoryName)

  end
end
