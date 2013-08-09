class Request < ActiveRecord::Base
	
	validates_presence_of :request_smd_number, :request_date, :request_date_required, 
	:request_required_for, :request_brief_description, :request_comments,
	:request_supplier 

	belongs_to :customer
	belongs_to :designer
	belongs_to :supplier
	belongs_to :status
	has_many :tags
	has_many :images
	
	accepts_nested_attributes_for :customer
	accepts_nested_attributes_for :designer
	accepts_nested_attributes_for :supplier
	accepts_nested_attributes_for :status
	
	acts_as_taggable_on :requests, :tags, :tag_list

<<<<<<< HEAD
	has_attached_file :sample_image, styles: {
	    thumb: '100x100>',
    	square: '200x200#',
    	medium: '300x300>'
    }
=======
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
>>>>>>> 905d73f745947c325a1dc4b452a5bda0ea929f01
end