# == Schema Information
#
# Table name: scenes
#
#  id          :integer          not null, primary key
#  recit       :text
#  periode     :date
#  lieu        :string(255)
#  id_chapitre :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Scene < ActiveRecord::Base
	belongs_to :chapitre

	validates :recit, :length => { :minimum => 1 }
	validates :lieu, :length => { :maximum => 200, :minimum => 1 }
	validates :id_chapitre, :length => { :maximum => 4 }
end
