class CreateTutorials < ActiveRecord::Migration
  def change
    create_table :tutorials do |t|
      t.string :name
      t.text :description
      t.string :step
      t.references :project, index: true

      t.timestamps null: false
    end
  end
end
