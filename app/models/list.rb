class List < ActiveRecord::Base
	validates_presence_of :name

	belongs_to :user
	has_and_belongs_to_many :categories
	has_many :requests
end
