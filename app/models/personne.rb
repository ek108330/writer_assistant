# == Schema Information
#
# Table name: personnes
#
#  id         :integer          not null, primary key
#  nom        :string(255)
#  scene_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Personne < ActiveRecord::Base
	belongs_to :scene

	validates :nom, :length => { :maximum => 200, :minimum => 1 }
	validates :scene_id, :length => { :maximum => 4}
end
