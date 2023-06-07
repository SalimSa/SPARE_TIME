class CreateTextComponents < ActiveRecord::Migration[7.0]
  def change
    create_table :text_components do |t|
      t.text :paragraph
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
