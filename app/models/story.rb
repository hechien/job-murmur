class Story < ActiveRecord::Base
  belongs_to :user

  validates :location, :content, :presence => true
end
