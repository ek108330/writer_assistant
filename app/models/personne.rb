# == Schema Information
#
# Table name: personnes
#
#  id         :integer          not null, primary key
#  nom        :string(255)
#  id_scene   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Personne < ActiveRecord::Base
	belongs_to :scene

	validates :nom, :length => { :maximum => 200, :minimum => 1 }
	validates :id_scene, :length => { :maximum => 4}
end
