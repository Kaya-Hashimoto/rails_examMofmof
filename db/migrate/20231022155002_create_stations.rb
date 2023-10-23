class CreateStations < ActiveRecord::Migration[6.0]
  def change
    create_table :stations do |t|
      t.string :line_name
      t.string :station_name
      t.string :walking_minutes
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
