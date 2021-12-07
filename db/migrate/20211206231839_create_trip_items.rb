class CreateTripItems < ActiveRecord::Migration[6.1]
  def change
    create_table :trip_items do |t|
      t.integer :quantity
      t.references :trip
      t.references :item
    end
  end
end
