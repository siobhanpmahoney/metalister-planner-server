class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :details
      t.string :priority
      t.boolean :is_roadblocker
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
