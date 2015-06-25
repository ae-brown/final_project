class Remind < ActiveRecord::Base
	belongs_to :user

validates :cel_phone, presence: true
#validates :time, presence: true



end
