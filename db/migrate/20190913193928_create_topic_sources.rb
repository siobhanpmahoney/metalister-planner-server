class CreateTopicSources < ActiveRecord::Migration[6.0]
  def change
    create_table :topic_sources do |t|
      t.belongs_to :topic, null: false, foreign_key: true
      t.belongs_to :source, null: false, foreign_key: true

      t.timestamps
    end
  end
end
