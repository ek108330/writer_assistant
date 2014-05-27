# == Schema Information
#
# Table name: chapitres
#
#  id         :integer          not null, primary key
#  numero     :integer
#  titre      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Chapitre < ActiveRecord::Base
	validates :titre, :length => { :maximum => 100}
	validates :numero, :length => { :minimum => 1 }

	has_many :scenes
	has_many :anecdotes
end
