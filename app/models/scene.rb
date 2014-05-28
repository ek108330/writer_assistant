# == Schema Information
#
# Table name: scenes
#
#  id          :integer          not null, primary key
#  recit       :text
#  periode     :date
#  lieu        :string(255)
#  chapitre_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Scene < ActiveRecord::Base
	belongs_to :chapitre
	has_many :personnes

	default_scope -> {order('periode ASC')}
	validates :recit, :length => { :minimum => 1 }
	validates :lieu, :length => { :maximum => 200, :minimum => 1 }
	validates :chapitre_id, :length => { :maximum => 4 }
end
