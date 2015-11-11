class Tagging < ActiveRecord::Base

  belongs_to :link
  belongs_to :tag

  validates_prescence_of :link, :tag
  
end
