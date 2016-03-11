class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :show, null: false, index: true
      t.time :time, null: false
      t.date :date, null: false
      t.integer :host_id, null: false
      t.text :description, null: false
      t.integer :max_occupancy, null: false

      t.timestamps null: false
    end
  end
end
