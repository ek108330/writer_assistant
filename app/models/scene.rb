class Scene < ActiveRecord::Base
	validates :recit, :length => { :minimum => 1 }
	validates :lieu, :length => { :maximum => 200, :minimum => 1 }
end
