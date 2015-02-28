class TblProductsController < ApplicationController
  before_action :set_tbl_product, only: [:show, :edit, :update, :destroy]

  # GET /tbl_products
  # GET /tbl_products.json
  def index
    @tbl_products = TblProduct.all
    @selected ="Electronics"

  end

  # GET /tbl_products/1
  # GET /tbl_products/1.json
  def show

    if session[:pageid]==1
      if   session[:placeholder] == ""
        session[:placeholder]=1
      end
      @categoryinfo=TblCategory.find_by_CategoryID(session[:placeholder])

      query= 'UPDATE tbl_products SET "ProductCategory"='+"'"+"#{@categoryinfo.CategoryName}"+"'"+' where "ProductID"='+"#{params[:id]}"+";"


      ActiveRecord::Base.connection.execute(query);
      session[:pageid]=0;
    end
  end

  # GET /tbl_products/new
  def new
    @tbl_product = TblProduct.new

  end

  # GET /tbl_products/1/edit
  def edit
  end

  # POST /tbl_products
  # POST /tbl_products.json
  def create
    @tbl_product = TblProduct.new(tbl_product_params)

    respond_to do |format|
      if @tbl_product.save


        session[:pageid]=1
        session[:placeholder]=params[:placehold]

        format.html { redirect_to @tbl_product, notice: 'Tbl product was successfully created.' }

        format.json { render :show, status: :created, location: @tbl_product }


      else
        format.html { render :new }
        format.json { render json: @tbl_product.errors, status: :unprocessable_entity }
      end

    end
  end

  # PATCH/PUT /tbl_products/1
  # PATCH/PUT /tbl_products/1.json
  def update
    respond_to do |format|
      if @tbl_product.update(tbl_product_params)
        format.html { redirect_to @tbl_product, notice: 'Tbl product was successfully updated.' }
        format.json { render :show, status: :ok, location: @tbl_product }
      else
        format.html { render :edit }
        format.json { render json: @tbl_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tbl_products/1
  # DELETE /tbl_products/1.json
  def destroy
    @tbl_product.destroy
    respond_to do |format|
      format.html { redirect_to tbl_products_url, notice: 'Tbl product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tbl_product
      @tbl_product = TblProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tbl_product_params
      params.require(:tbl_product).permit(:ProductCode, :ProductName, :ProductBrand, :ProductPrice, :ProductCategory,:ProductID)
    end
end
