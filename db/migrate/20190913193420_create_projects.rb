class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.text :name
      t.text :description
      t.text :repo_link
      t.text :status

      t.timestamps
    end
  end
end
