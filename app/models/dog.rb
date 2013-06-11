class Dog < ActiveRecord::Base
  attr_accessible :bio, :name, :notes, :photo, :priority, :site, :video
end
