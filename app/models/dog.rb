class Dog < ActiveRecord::Base
  validates :name, :presence => true
  attr_accessible :bio, :name, :notes, :photo, :priority, :site, :video
  # belongs_to :site, :foreign_key => 'id'

end

