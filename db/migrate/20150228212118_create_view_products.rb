class CreateViewProducts < ActiveRecord::Migration
  def change
    create_table :view_products do |t|

      t.timestamps
    end
  end
end
