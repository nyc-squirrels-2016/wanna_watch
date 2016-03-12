class AddImagesToUsers < ActiveRecord::Migration
  def up
   add_attachment :users, :profile_picture
   add_attachment :users, :where_you_watch_picture
  end
  def down
    remove_attachment :users, :profile_picture
    remove_attachment :users, :where_you_watch_picture
  end
end
