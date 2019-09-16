class CreateSourceNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :source_notes do |t|
      t.belongs_to :source
      t.belongs_to :note

      t.timestamps
    end
  end
end
