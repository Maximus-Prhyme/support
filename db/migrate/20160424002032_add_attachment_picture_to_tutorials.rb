class AddAttachmentPictureToTutorials < ActiveRecord::Migration
  def self.up
    change_table :tutorials do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :tutorials, :picture
  end
end
