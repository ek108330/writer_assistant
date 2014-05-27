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

require 'spec_helper'

describe Chapitre do

  let(:Chapitre) { FactoryGirl.create(:Chapitre) }
  before do
    # This code is not idiomatically correct.
    @Chapitre = Chapitre.new(numero: '1', titre: "Ceci est un titre.")
  end

  subject { @micropost }

  it { should respond_to(:titre) }
  it { should respond_to(:numero) }

  it { should be_valid }

  describe "when chapter title is not present" do
    before { @Chapitre.titre = nil }
    it { should_not be_valid }
  end
end
