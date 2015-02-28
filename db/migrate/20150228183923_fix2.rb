class Fix2 < ActiveRecord::Migration
  def change
    remove_column :tbl_products,:id

    add_column :tbl_products,:ProductID,:primary_key
  end
end
