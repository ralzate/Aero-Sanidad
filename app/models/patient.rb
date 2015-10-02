class Patient < ActiveRecord::Base
  belongs_to :eps
  belongs_to :arl
  belongs_to :city
  belongs_to :user
end
