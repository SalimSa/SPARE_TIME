class AddCoordinatesToCollaborations < ActiveRecord::Migration[7.0]
  def change
    add_column :collaborations, :latitude, :float
    add_column :collaborations, :longitude, :float
  end
end
