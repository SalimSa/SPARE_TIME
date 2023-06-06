class CreateComponents < ActiveRecord::Migration[7.0]
  def change
    create_table :components do |t|
      t.text :content
      t.string :type
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
