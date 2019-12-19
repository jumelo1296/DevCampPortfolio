# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


3.times do |topic|
Topic.create!(
    title: "This is Blog #{topic}",
   )
end
puts "10 Blogs created"


10.times do |blog|
Blog.create!(
    title: "This is Blog #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tincidunt tempus eros vel auctor. Donec ac nibh a odio ornare pharetra nec a ante. In luctus nulla nec libero sodales, id convallis justo pulvinar. Quisque volutpat libero at felis blandit ullamcorper. Quisque fringilla urna risus, eget efficitur sem dignissim nec. Quisque pellentesque eros lectus, sed aliquam ligula ultrices quis. Suspendisse a nunc pellentesque sapien elementum tempus. Vivamus sed diam eu est ultrices imperdiet. Integer finibus ut sem ac fringilla. Quisque commodo libero sed metus luctus sodales.",
    topic_id: Topic.last.id
  )
end
puts "10 Blogs created"

5.times do |skill|
Skill.create!(
  title: "Rails #{skill}",
  percent_utilized: 15
)
end
puts "5 Skills created"


8.times do |portfolio_item|
Portfolio.create!(
  title: "Portfolio title #{portfolio_item}",
  subtitle:"Ruby on Rails",
  body: "Vivamus sagittis ligula ut velit venenatis lacinia. Aenean ut tellus gravida, congue arcu sit amet, volutpat mi. Nulla finibus mi vitae neque convallis varius. Aliquam pretium arcu eget interdum viverra. Mauris venenatis turpis id tortor gravida sodales. Pellentesque id nisl erat. Pellentesque nec pellentesque lacus. Praesent rhoncus congue sollicitudin. Vivamus convallis consequat pharetra. Donec faucibus leo libero, ac posuere justo porta a. Etiam porta nisl in tempor rutrum. Fusce tempus sodales sem vel consectetur. Etiam in euismod nulla. Integer accumsan lorem vitae metus hendrerit interdum. Sed et pellentesque justo. Nam sed ullamcorper mauris.",
  main_image: "https://via.placeholder.com/650x400",
  thumb_image: "https://via.placeholder.com/350x200"
)
end
1.times do |portfolio_item|
Portfolio.create!(
  title: "Portfolio title #{portfolio_item}",
  subtitle:"Angular",
  body: "Vivamus sagittis ligula ut velit venenatis lacinia. Aenean ut tellus gravida, congue arcu sit amet, volutpat mi. Nulla finibus mi vitae neque convallis varius. Aliquam pretium arcu eget interdum viverra. Mauris venenatis turpis id tortor gravida sodales. Pellentesque id nisl erat. Pellentesque nec pellentesque lacus. Praesent rhoncus congue sollicitudin. Vivamus convallis consequat pharetra. Donec faucibus leo libero, ac posuere justo porta a. Etiam porta nisl in tempor rutrum. Fusce tempus sodales sem vel consectetur. Etiam in euismod nulla. Integer accumsan lorem vitae metus hendrerit interdum. Sed et pellentesque justo. Nam sed ullamcorper mauris.",
  main_image: "https://via.placeholder.com/650x400",
  thumb_image: "https://via.placeholder.com/350x200"
)
end


puts "9 Portfolios created"
