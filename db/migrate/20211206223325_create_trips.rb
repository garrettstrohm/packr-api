class CreateTrips < ActiveRecord::Migration[6.1]
  def change
    create_table :trips do |t|
      t.string :title
      t.date :date
      t.text :description
      t.references :user
    end
  end
end
