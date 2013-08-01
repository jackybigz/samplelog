class AddDesignerToRequests < ActiveRecord::Migration
  def change
  	change_table :requests do |t|
  		t.string :request_designer  		
  	end
  end
end
