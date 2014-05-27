class Anecdote < ActiveRecord::Base
	validates :sujet, :length => { :maximum => 200 }, :length => { :minimum => 1 }
	validates :theme, :length => { :maximum => 200 }, :length => { :minimum => 1 }
end
