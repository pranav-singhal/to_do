class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :user_id
      t.string :Tweet_content
      t.string :tweeter

      t.timestamps null: false
    end
  end
end
