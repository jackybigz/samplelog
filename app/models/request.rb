class Request < ActiveRecord::Base
	validates_presence_of :request_smd_number, :request_date, :request_date_required, 
	:request_required_for, :request_brief_description, :request_comments,
	:request_supplier
end
