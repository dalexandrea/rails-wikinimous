puts "Started seed"
puts "Emptying DB!"

Article.destroy_all

10.times do
  arti = Article.new(title: Faker::RickAndMorty.character, content: Faker::RickAndMorty.quote)

  puts "#{arti.title} saved!" if arti.save
end

puts "Seeding finished!"
