class AddAttachmentPictureToMakeups < ActiveRecord::Migration[5.2]
  def self.up
    change_table :makeups do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :makeups, :picture
  end
end
