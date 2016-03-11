class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :active, default: 1
      t.integer :guest_id, null: false
      t.integer :event_id, null: false

      t.timestamps null: false
    end
  end
end
