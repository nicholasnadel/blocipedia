 require 'faker'
 
 # Create Pages
 50.times do
   Page.create!(
     title:  Faker::Lorem.sentence,
     body:   Faker::Lorem.paragraph
   )
 end
 pages = Page.all
 
 # Create Comments
 100.times do
   Comment.create!(
     page: pages.sample,
     body: Faker::Lorem.paragraph
   )
 end
 
 puts "Seed finished"
 puts "#{Page.count} pages created"
 puts "#{Comment.count} comments created"