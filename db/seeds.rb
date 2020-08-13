# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Lesson.destroy_all
UserCourse.destroy_all
User.destroy_all
Course.destroy_all


akil = User.create!(username: 'Akil', password: 'potatochips')
timmy = User.create!(username: 'Timmy', password: 'turntup')
tiny = User.create!(username: 'Tiny', password: 'tina')
joel = User.create!(username: 'Joel', password: 'donedirty')
boi = User.create!(username: 'Boi', password: 'WHh')


russian = Course.create!(name: 'Russian')
chinese = Course.create!(name: 'Chinese')
arabic = Course.create!(name: 'Arabic')
bosnian = Course.create!(name: 'Bosnian')
german = Course.create!(name: 'German')


UserCourse.create!(user_id: akil.id, course_id: russian.id)
UserCourse.create!(user_id: akil.id, course_id: arabic.id)
UserCourse.create!(user_id: tiny.id, course_id: bosnian.id)
UserCourse.create!(user_id: joel.id, course_id: russian.id)
UserCourse.create!(user_id: boi.id, course_id: german.id)
UserCourse.create!(user_id: akil.id, course_id: chinese.id)
UserCourse.create!(user_id: timmy.id, course_id: arabic.id)


apple = Lesson.create!(
    name: 'apple', 
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTbVq1bY_y5cAH4ktS-XWcKmR5oTH8uy-9TdA&usqp=CAU', 
    category: 'food',
    translation: 'яблоко', 
    course_id: russian.id
    )

banana = Lesson.create!(
    name: 'banana', 
    img: 'https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/271/271157/bananas-chopped-up-in-a-bowl.jpg?w=1155&h=1528', 
    category: 'food',
    translation: 'банан', 
    course_id: russian.id
    )