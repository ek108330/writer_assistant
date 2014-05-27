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

require 'spec_helper'

describe Anecdote do
  pending "add some examples to (or delete) #{__FILE__}"
end
