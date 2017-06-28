class CreateFollowedUsers < ActiveRecord::Migration
  def change
    create_table :followed_users do |t|
      t.integer :user_id
      t.integer :followed_user_id

      t.timestamps null: false
    end
  end
end
