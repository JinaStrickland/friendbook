# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all 
Post.destroy_all 
User.destroy_all 

10.times do User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    image: "https://upload.wikimedia.org/wikipedia/commons/e/e6/Noto_Emoji_KitKat_263a.svg"
)
end


20.times do Post.create(
    post: Faker::TvShows::BigBangTheory.quote,
    likes: 0,
    user: User.all.sample 
)
end

20.times do Comment.create(
    comment: Faker::TvShows::Buffy.quote,
    likes: 0,
    user: User.all.sample,
    post: Post.all.sample 
)
end