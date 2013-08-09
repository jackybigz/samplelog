class AddAttachmentSampleImageToRequests < ActiveRecord::Migration
  def self.up
    change_table :requests do |t|
      t.attachment :sample_image
    end
  end

  def self.down
    drop_attached_file :requests, :sample_image
  end
end
