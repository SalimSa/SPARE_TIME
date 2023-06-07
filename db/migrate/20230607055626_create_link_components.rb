class CreateLinkComponents < ActiveRecord::Migration[7.0]
  def change
    create_table :link_components do |t|
      t.string :url
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
