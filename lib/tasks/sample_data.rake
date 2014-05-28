require 'faker'

namespace :db do
	desc "Fill database with sample data"

	task :populate => :environment do
		Rake::Task['db:reset'].invoke

		#Chapitre.create!(	:numero => "1",
		#					:titre => "Chapitre1")

		10.times do |d|

			# Creation des Personnages
			25.times do |n|
				name = Faker::Name.name
				#email = "example-#{n+1}@railstutorial.org"
				Personne.create!(	:nom => name,
									:scene_id => n)
			end

			# Creation des chapitres
			titre = Faker::Lorem.sentence(word_count=2)
			Chapitre.create!(	:numero => d,
								:titre => titre)
		end

		25.times do |n|
			# Creation des scenes
			#  recit       :text
			#  periode     :date
			#  lieu        :string(255)
			#  chapitre_id :integer
			recit = Faker::Lorem.paragraph(sentence_count = 5)
			periode = rand(100.years).ago
			lieu = Faker::Address.city
			chapitre_id = n/2.5

			Scene.create!(	:recit => recit,
							:periode => periode,
							:lieu => lieu,
							:chapitre_id => chapitre_id)

			# Creation des anecdotes
			#  sujet       :text
			#  theme       :string(255)
			#  chapitre_id :integer
			sujet = Faker::Lorem.sentence(3, word_count=2)
			theme = Faker::Lorem.sentence(3, word_count=4)
			chapitre_id = n/2.5

			Anecdote.create!(	:sujet => sujet,
								:theme => theme,
								:chapitre_id => chapitre_id)

		end
	end
end


#namespace :db do
#  desc "Fill database with sample data"
#  task populate: :environment do

#    chapitres = Chapitres.all(limit: 6)
#    50.times do
#      content = Faker::Lorem.sentence(5)
#      chapitres.each { |chapitres| chapitre.scene.create!(recit: content) }
#    end
#  end
#end