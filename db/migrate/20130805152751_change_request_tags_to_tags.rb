class ChangeRequestTagsToTags < ActiveRecord::Migration
  def change
  	rename_column :requests, :request_tags, :tags
  end
end
