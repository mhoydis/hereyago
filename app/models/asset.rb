class Asset < ActiveRecord::Base
  
  belongs_to :user
  has_attached_file :asset, :styles => { :original, :large => "640x480", :medium => "300x300", :thumb => "100x100" }
  
end
