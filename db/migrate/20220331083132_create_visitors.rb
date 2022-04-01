class CreateVisitors < ActiveRecord::Migration[7.0]
  def change
    create_table :visitors do |t|
      t.string :name
      t.integer :room_no
      t.text :description
      t.string :date_of_arrival
      t.string :datetime

      t.timestamps
    end
  end
end
