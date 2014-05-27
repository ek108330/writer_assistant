# == Schema Information
#
# Table name: anecdotes
#
#  id          :integer          not null, primary key
#  sujet       :text
#  theme       :string(255)
#  id_chapitre :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Anecdote < ActiveRecord::Base
	belongs_to :chapitre

	validates :sujet, :length => { :maximum => 200, :minimum => 1  }
	validates :theme, :length => { :maximum => 200, :minimum => 1  }
	validates :id_chapitre, :length => { :maximum => 4 }
end
