# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
3.times do |n|
  Topic.create!(
    title: "Topic #{n}"
  )
end

puts "3 Topics created"

10.times do |n|
  Blog.create!(
    title: "Blog Post Number #{n}",
    body: "On the other hand, we denounce with righteous indignation and dislike men ",
    topic_id: Topic.last.id
  )
end

puts "10 Blogs created"

5.times do |n|
  Skill.create!(
    title: "Skill number #{n}",
    percent_effort: n*5
  )
end

puts "5 Skills created"

8.times do |n|
  Portfolio.create!(
    title: "Portfolio #{n}",
    subtitle: "Ruby on rails",
    body: "n a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

1.times do |n|
  Portfolio.create!(
    title: "Portfolio #{n+10}",
    subtitle: "Angular",
    body: "n a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

puts "9 Portolios created"

3.times do |n|
  Portfolio.last.technologies.create!(
    name: "Technology #{n}"
  )
end

puts "3 Technologies created"
