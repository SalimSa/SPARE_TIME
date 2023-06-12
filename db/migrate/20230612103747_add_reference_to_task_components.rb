class AddReferenceToTaskComponents < ActiveRecord::Migration[7.0]
  def change
    add_reference :task_components, :item, null: false, foreign_key: true
  end
end
