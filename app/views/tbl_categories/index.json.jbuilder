json.array!(@tbl_categories) do |tbl_category|
  json.extract! tbl_category, :id, :CategoryName, :Description
  json.url tbl_category_url(tbl_category, format: :json)
end
