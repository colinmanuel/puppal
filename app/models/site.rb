class Site < ActiveRecord::Base
  attr_accessible :bio, :name, :notes, :photo, :priority, :site, :video
  # has_many :dogs, :foreign_key => 'id'
end

