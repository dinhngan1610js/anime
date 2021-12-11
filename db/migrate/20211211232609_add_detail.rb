class AddDetail < ActiveRecord::Migration[6.1]
  def change
    add_column :animes, :detail, :text;
  end
end
