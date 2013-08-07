class ChangeTagtoTags < ActiveRecord::Migration
  def change
  	rename_column :requests, :tags, :request_tags
  end
end
