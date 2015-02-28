class CreateTblCategories < ActiveRecord::Migration
  def change
    create_table :tbl_categories do |t|
      t.string :CategoryName
      t.string :Description

      t.timestamps
    end
  end
end
