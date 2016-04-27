class AddTutorialsToProjects < ActiveRecord::Migration
  def change
    add_reference :projects, :tutorials, index: true, foreign_key: false
  end
end
