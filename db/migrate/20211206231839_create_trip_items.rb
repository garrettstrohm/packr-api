class CreateTripItems < ActiveRecord::Migration[6.1]
  def change
    create_table :trip_items do |t|
      t.string :name
      t.string :description
      t.integer :quantity
      t.references :trip
    end
  end
end
