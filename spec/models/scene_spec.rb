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

require 'spec_helper'

describe Scene do
  pending "add some examples to (or delete) #{__FILE__}"
end
