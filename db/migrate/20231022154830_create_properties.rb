class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :property_name
      t.string :rent
      t.string :built_year
      t.string :address
      t.text :remark

      t.timestamps
    end
  end
end
