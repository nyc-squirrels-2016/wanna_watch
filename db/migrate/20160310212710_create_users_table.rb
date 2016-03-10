class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false, index: true, unique: true
      t.string :password_digest
      t.string :email, null: false, unique: true
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :about_me
      t.string :phone_number, unique: true

      t.timestamps null: false
    end
  end
end
