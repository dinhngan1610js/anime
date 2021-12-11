class CreateAnimeComments < ActiveRecord::Migration[6.1]
  def change
    create_table :anime_comments do |t|
      t.integer :user_id
      t.integer :anime_id
      t.text :comment

      t.timestamps
    end
  end
end
