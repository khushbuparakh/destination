class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :query_text
      t.decimal :geoLat
      t.decimal :geoLan

      t.timestamps null: false
    end
  end
end
