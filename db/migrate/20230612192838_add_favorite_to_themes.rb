class AddFavoriteToThemes < ActiveRecord::Migration[7.0]
  def change
    add_column :themes, :favorite, :boolean
  end
end
