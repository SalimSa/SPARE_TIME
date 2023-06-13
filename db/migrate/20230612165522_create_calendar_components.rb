class CreateCalendarComponents < ActiveRecord::Migration[7.0]
  def change
    create_table :calendar_components do |t|
      t.string :name
      t.date :start_time
      t.date :end_time
      t.references :item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
