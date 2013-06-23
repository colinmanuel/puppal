class Dog < ActiveRecord::Base
  validates :name, :presence => true
  attr_accessible :bio, :name, :notes, :photo, :priority, :site, :video
  # belongs_to :site, :foreign_key => 'id'

  # Order dogs alphabetically
  scope :alphabetically, order("name ASC")
  
  # Find by Site
  scope :tlac, where(site: 'TLAC')
  scope :mueller, where(site: '51st and Mueller')
  scope :brodie, where(site: 'Brodie')
  scope :soco, where(site: 'SoCo')
  scope :lakeline, where(site: 'Lakeline')

  # Find by Priority
  scope :high, where(priority: 1)
  scope :med, where(priority: 2)
  scope :low, where(priority: 3)

  # Find by Need
  scope :needphotos, :conditions=>['photo == "Incomplete" OR photo == "Outdated"']
  scope :needvideos, :conditions=>['video == "Incomplete" OR video == "Outdated"']
  scope :needbios, :conditions=>['bio == "Incomplete" OR bio == "Outdated"']

end


