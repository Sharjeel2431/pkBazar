class MainPageController < ApplicationController

  def index
  @tbl_categories=TblCategory.all
  end
end
