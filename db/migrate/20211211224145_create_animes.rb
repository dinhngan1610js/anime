class CreateAnimes < ActiveRecord::Migration[6.1]
  def change
    create_table :animes do |t|
      t.string :title
      t.string :author
      t.string :producer
      t.date :release
      t.string :genre
      t.string :url

      t.timestamps
    end
  end
end
