class Personne < ActiveRecord::Base
	validates :nom, :length => { :maximum => 200, :minimum => 1 }
end
