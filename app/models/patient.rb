class Patient < ActiveRecord::Base
  belongs_to :eps
  belongs_to :arl
  belongs_to :city
  belongs_to :user
  	def self.search(search)
		where("first_name like '%#{search}%'")
	end
end
