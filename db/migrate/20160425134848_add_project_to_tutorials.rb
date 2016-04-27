class AddProjectToTutorials < ActiveRecord::Migration
  def change
    add_reference :tutorials, :projects, index: true, foreign_key: false
  end
end
