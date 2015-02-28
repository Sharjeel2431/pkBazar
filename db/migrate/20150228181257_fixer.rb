class Fixer < ActiveRecord::Migration
  def change

    remove_column :tbl_categories,:id

    add_column :tbl_categories,:CategoryID,:primary_key
  end
end
