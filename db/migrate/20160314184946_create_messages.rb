class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
    	t.text :body, null: false
    	t.integer :conversation_id, index: true
    	t.integer :user_id, index: true

    	t.timestamps null: false
    end
  end
end
