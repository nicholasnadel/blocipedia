 require 'faker'
 
 # Create Pages
 50.times do
   Page.create!(
     title:  Faker::Lorem.sentence,
     body:   Faker::Lorem.paragraph
   )
 end
 pages = Page.all
 

 #Create Plans
 Plan.create!(name: "Free", price: 0)
 Plan.create!(name: "Premium", price: 5)

 
 puts "Seed finished"
 puts "#{Page.count} pages created"
