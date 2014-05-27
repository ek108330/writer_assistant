class Chapitre < ActiveRecord::Base
	validates :titre, :length => { :maximum => 100}
	validates :numero, :length => { :minimum => 1 }
end
