class CreateTblProducts < ActiveRecord::Migration
  def change
    create_table :tbl_products do |t|
      t.string :ProductCode
      t.string :ProductName
      t.string :ProductBrand
      t.string :ProductPrice
      t.string :ProductCategory

      t.timestamps
    end
  end
end
