class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.date :request_date
      t.string :request_smd_number
      t.string :request_brief_description
      t.text :request_description
      t.string :request_supplier
      t.string :request_colours
      t.date :request_date_required
      t.string :request_required_for
      t.text :request_comments
      t.date :request_confirmed_comp_date
      t.string :request_received
      t.date :request_received_date
      t.date :request_date_sent
      t.string :request_tracking_number
      t.date :request_confirmed_comp_date
      t.date :request_confirmed_comp_date2
      t.date :request_confirmed_comp_date3
      t.date :request_confirmed_comp_date4
      t.date :request_confirmed_comp_date5
      t.date :request_confirmed_comp_date6
      t.string :tag

      t.timestamps
    end
  end
end
