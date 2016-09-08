class AddCategoriesToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :hardware, :boolean
    add_column :projects, :inventory, :boolean
    add_column :projects, :pos, :boolean
    add_column :projects, :network, :boolean
    add_column :projects, :trace, :boolean
    add_column :projects, :training, :boolean
  end
end
