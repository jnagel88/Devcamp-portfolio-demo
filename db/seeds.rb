# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  email: 'admin@test.com',
  name: 'Admin User',
  password: 'test123',
  password_confirmation: 'test123',
  roles: 'site_admin'
  )
puts "1 admin seeded"

User.create!(
  email: 'user@test.com',
  name: 'Guest User',
  password: 'test123',
  password_confirmation: 'test123'
  )
puts '1 Guest user seeded'


3.times do |topic|
  Topic.create!(
           title: "Topic #{topic}"
  )
end

puts 'Topics Seeded'

10.times do |blog|
  Blog.create!(
          title: "my blog post #{blog + 1}",
          body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          topic_id: Topic.last.id
  )
end
puts 'Blogs Seeded'

5.times do |skill|
  Skill.create!(
           title: "Rails #{skill + 1}",
           percent_utilized: 15
  )
end
puts '5 Skills Seeded'

8.times do |portfolio_item|
  Portfolio.create!(
           title: "portfolio title #{portfolio_item + 1}" ,
           subtitle: "Ruby on Rails",
           body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
           main_image: "http://via.placeholder.com/600x400",
           thumb_image: "http://via.placeholder.com/350x200",
           position: portfolio_item + 1
  )
end

  1.times do |portfolio_item|
    Portfolio.create!(
        title: "portfolio title #{portfolio_item + 1}" ,
        subtitle: "Angular",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        main_image: "https://placeholdit.co//i/600x400",
        thumb_image: "https://placeholdit.co//i/350x200",
        position: 9
    )
  end
puts '9 Portfolio Items Seeded'

3.times do |technology|
  Portfolio.last.technologies.create!(
                name: "Technology #{technology}",
  )

end
puts "3 Technologies completed"

puts "All Seeds Completed"