namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do

    chapitres = Chapitres.all(limit: 6)
    50.times do
      content = Faker::Lorem.sentence(5)
      chapitres.each { |chapitres| chapitre.scene.create!(recit: content) }
    end
  end
end