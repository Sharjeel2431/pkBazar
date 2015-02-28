json.array!(@tbl_products) do |tbl_product|
  json.extract! tbl_product, :id, :ProductCode, :ProductName, :ProductBrand, :ProductPrice, :ProductCategory
  json.url tbl_product_url(tbl_product, format: :json)
end
