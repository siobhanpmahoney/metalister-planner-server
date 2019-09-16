class CreateTopicProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :topic_projects do |t|
      t.belongs_to :topic, null: false, foreign_key: true
      t.belongs_to :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
