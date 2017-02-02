class AddAttachmentImageToSquabbles < ActiveRecord::Migration
  def self.up
    change_table :squabblers do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :squabblers, :image
  end
end
