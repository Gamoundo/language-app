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

bread = Lesson.create!(
    name: 'bread', 
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtXdiCdBAggC7IhFWOY4n-Yin4zsE5I5tx7GQGPkRI9rMb5YYzxlzUlufRSKdZLLg08uAvrWwfGFxozwaYVg&s=19', 
    category: 'food',
    translation: 'хлеб', 
    course_id: russian.id
    )

pizza = Lesson.create!(
    name: 'pizza', 
    img: 'https://3.bp.blogspot.com/-ckEkrrDNzIk/UGj5V7VdLgI/AAAAAAAAoYc/K4WN5wIMC_g/s1600/Domino%27s+Pan+Pizza+review.jpg', 
    category: 'food',
    translation: 'пицца', 
    course_id: russian.id
    )

chicken = Lesson.create!(
    name: 'chicken', 
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkj7uqZI3dEijZU8iv-su67Vyy4YF0FN6_Rny5ZfnCzV14u-1_nafvLQFu5PhhmtjNe2NHMeOgwPV1zMEvWg&s=19', 
    category: 'food',
    translation: 'курятина', 
    course_id: russian.id
    )

cheese = Lesson.create!(
    name: 'cheese', 
    img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ03sncBDaSGfTdJt31ZX8Tjf9bhRl8ulGzk4rf2mzbrlkBaOOs1GMPKW4upRMKUbwb47NcjN6A3AIUs0KV6A&s=19', 
    category: 'food',
    translation: 'сыр', 
    course_id: russian.id
    )



    Lesson.create!(
        name: 'apple', 
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTbVq1bY_y5cAH4ktS-XWcKmR5oTH8uy-9TdA&usqp=CAU', 
        category: 'food',
        translation: 'jabuka', 
        course_id: bosnian.id
        )
    
    Lesson.create!(
        name: 'banana', 
        img: 'https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/271/271157/bananas-chopped-up-in-a-bowl.jpg?w=1155&h=1528', 
        category: 'food',
        translation: 'banana', 
        course_id: bosnian.id
        )
    
    Lesson.create!(
        name: 'bread', 
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtXdiCdBAggC7IhFWOY4n-Yin4zsE5I5tx7GQGPkRI9rMb5YYzxlzUlufRSKdZLLg08uAvrWwfGFxozwaYVg&s=19', 
        category: 'food',
        translation: 'hleb', 
        course_id: bosnian.id
        )
    
    Lesson.create!(
        name: 'pizza', 
        img: 'https://3.bp.blogspot.com/-ckEkrrDNzIk/UGj5V7VdLgI/AAAAAAAAoYc/K4WN5wIMC_g/s1600/Domino%27s+Pan+Pizza+review.jpg', 
        category: 'food',
        translation: 'pizza', 
        course_id: bosnian.id
        )
    
    Lesson.create!(
        name: 'chicken', 
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkj7uqZI3dEijZU8iv-su67Vyy4YF0FN6_Rny5ZfnCzV14u-1_nafvLQFu5PhhmtjNe2NHMeOgwPV1zMEvWg&s=19', 
        category: 'food',
        translation: 'piletina', 
        course_id: bosnian.id
        )
    
    Lesson.create!(
        name: 'cheese', 
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ03sncBDaSGfTdJt31ZX8Tjf9bhRl8ulGzk4rf2mzbrlkBaOOs1GMPKW4upRMKUbwb47NcjN6A3AIUs0KV6A&s=19', 
        category: 'food',
        translation: 'sir', 
        course_id: bosnian.id
        )



    Lesson.create!(
        name: 'apple', 
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTbVq1bY_y5cAH4ktS-XWcKmR5oTH8uy-9TdA&usqp=CAU', 
        category: 'food',
        translation: '苹果', 
        course_id: chinese.id
        )
    
    Lesson.create!(
        name: 'banana', 
        img: 'https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/271/271157/bananas-chopped-up-in-a-bowl.jpg?w=1155&h=1528', 
        category: 'food',
        translation: '香蕉', 
        course_id: chinese.id
        )
    
    Lesson.create!(
        name: 'bread', 
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtXdiCdBAggC7IhFWOY4n-Yin4zsE5I5tx7GQGPkRI9rMb5YYzxlzUlufRSKdZLLg08uAvrWwfGFxozwaYVg&s=19', 
        category: 'food',
        translation: '面包', 
        course_id: chinese.id
        )
    
    Lesson.create!(
        name: 'pizza', 
        img: 'https://3.bp.blogspot.com/-ckEkrrDNzIk/UGj5V7VdLgI/AAAAAAAAoYc/K4WN5wIMC_g/s1600/Domino%27s+Pan+Pizza+review.jpg', 
        category: 'food',
        translation: '比萨', 
        course_id: chinese.id
        )
    
    Lesson.create!(
        name: 'chicken', 
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkj7uqZI3dEijZU8iv-su67Vyy4YF0FN6_Rny5ZfnCzV14u-1_nafvLQFu5PhhmtjNe2NHMeOgwPV1zMEvWg&s=19', 
        category: 'food',
        translation: '鸡', 
        course_id: chinese.id
        )
    
    Lesson.create!(
        name: 'cheese', 
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ03sncBDaSGfTdJt31ZX8Tjf9bhRl8ulGzk4rf2mzbrlkBaOOs1GMPKW4upRMKUbwb47NcjN6A3AIUs0KV6A&s=19', 
        category: 'food',
        translation: '起司', 
        course_id: chinese.id
        )



    Lesson.create!(
        name: 'apple', 
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTbVq1bY_y5cAH4ktS-XWcKmR5oTH8uy-9TdA&usqp=CAU', 
        category: 'food',
        translation: "تفاحة", 
        course_id: arabic.id
        )
    
    Lesson.create!(
        name: 'banana', 
        img: 'https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/271/271157/bananas-chopped-up-in-a-bowl.jpg?w=1155&h=1528', 
        category: 'food',
        translation: 'موز', 
        course_id: arabic.id
        )
    
    Lesson.create!(
        name: 'bread', 
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtXdiCdBAggC7IhFWOY4n-Yin4zsE5I5tx7GQGPkRI9rMb5YYzxlzUlufRSKdZLLg08uAvrWwfGFxozwaYVg&s=19', 
        category: 'food',
        translation: 'خبز', 
        course_id: arabic.id
        )
    
    Lesson.create!(
        name: 'pizza', 
        img: 'https://3.bp.blogspot.com/-ckEkrrDNzIk/UGj5V7VdLgI/AAAAAAAAoYc/K4WN5wIMC_g/s1600/Domino%27s+Pan+Pizza+review.jpg', 
        category: 'food',
        translation: 'بيتزا', 
        course_id: arabic.id
        )
    
    Lesson.create!(
        name: 'chicken', 
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkj7uqZI3dEijZU8iv-su67Vyy4YF0FN6_Rny5ZfnCzV14u-1_nafvLQFu5PhhmtjNe2NHMeOgwPV1zMEvWg&s=19', 
        category: 'food',
        translation: 'دجاج', 
        course_id: arabic.id
        )
    
    Lesson.create!(
        name: 'cheese', 
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ03sncBDaSGfTdJt31ZX8Tjf9bhRl8ulGzk4rf2mzbrlkBaOOs1GMPKW4upRMKUbwb47NcjN6A3AIUs0KV6A&s=19', 
        category: 'food',
        translation: 'جبنه', 
        course_id: arabic.id
        )

    Lesson.create!(
        name: 'apple', 
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTbVq1bY_y5cAH4ktS-XWcKmR5oTH8uy-9TdA&usqp=CAU', 
        category: 'food',
        translation: "apfel", 
        course_id: german.id
        )
    
    Lesson.create!(
        name: 'banana', 
        img: 'https://i0.wp.com/cdn-prod.medicalnewstoday.com/content/images/articles/271/271157/bananas-chopped-up-in-a-bowl.jpg?w=1155&h=1528', 
        category: 'food',
        translation: 'banane', 
        course_id: german.id
        )
    
    Lesson.create!(
        name: 'bread', 
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtXdiCdBAggC7IhFWOY4n-Yin4zsE5I5tx7GQGPkRI9rMb5YYzxlzUlufRSKdZLLg08uAvrWwfGFxozwaYVg&s=19', 
        category: 'food',
        translation: 'brot', 
        course_id: german.id
        )
    
    Lesson.create!(
        name: 'pizza', 
        img: 'https://3.bp.blogspot.com/-ckEkrrDNzIk/UGj5V7VdLgI/AAAAAAAAoYc/K4WN5wIMC_g/s1600/Domino%27s+Pan+Pizza+review.jpg', 
        category: 'food',
        translation: 'pizza', 
        course_id: german.id
        )
    
    Lesson.create!(
        name: 'chicken', 
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkj7uqZI3dEijZU8iv-su67Vyy4YF0FN6_Rny5ZfnCzV14u-1_nafvLQFu5PhhmtjNe2NHMeOgwPV1zMEvWg&s=19', 
        category: 'food',
        translation: 'Hähnchen', 
        course_id: german.id
        )
    
    Lesson.create!(
        name: 'cheese', 
        img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ03sncBDaSGfTdJt31ZX8Tjf9bhRl8ulGzk4rf2mzbrlkBaOOs1GMPKW4upRMKUbwb47NcjN6A3AIUs0KV6A&s=19', 
        category: 'food',
        translation: 'Käse', 
        course_id: german.id
        )

gamer = Lesson.create!(
    name: 'gamer',
    img: 'https://static.bangkokpost.com/media/content/20200607/c1_3654792.jpg',
    category: 'occupation',
    translation: 'Spielerin',
    course_id: german.id
)

author = Lesson.create!(
    name: 'author',
    img: 'https://blog.taxact.com/wp-content/uploads/tax-tips-self-publishing-authors.jpg',
    category: 'occupation',
    translation: 'autor',
    course_id: german.id
)

chef = Lesson.create!(
    name: 'chef',
    img: 'https://www.ecpi.edu/sites/default/files/CIV%20Sept%2026.png',
    category: 'occupation',
    translation: 'Köchin',
    course_id: german.id
)

singer = Lesson.create!(
    name: 'singer',
    img: 'https://i.pinimg.com/originals/8c/39/40/8c394047063494b590be4dbf1349d7fa.jpg',
    category: 'occupation',
    translation: 'Sänger',
    course_id: german.id
)

Lesson.create!(
    name: 'gamer',
    img: 'https://static.bangkokpost.com/media/content/20200607/c1_3654792.jpg',
    category: 'occupation',
    translation: 'геймер',
    course_id: russian.id
)

Lesson.create!(
    name: 'author',
    img: 'https://blog.taxact.com/wp-content/uploads/tax-tips-self-publishing-authors.jpg',
    category: 'occupation',
    translation: 'автор',
    course_id: russian.id
)

Lesson.create!(
    name: 'chef',
    img: 'https://www.ecpi.edu/sites/default/files/CIV%20Sept%2026.png',
    category: 'occupation',
    translation: 'шеф-повар',
    course_id: russian.id
)

Lesson.create!(
    name: 'singer',
    img: 'https://i.pinimg.com/originals/8c/39/40/8c394047063494b590be4dbf1349d7fa.jpg',
    category: 'occupation',
    translation: 'певец',
    course_id: russian.id
)

Lesson.create!(
    name: 'gamer',
    img: 'https://static.bangkokpost.com/media/content/20200607/c1_3654792.jpg',
    category: 'occupation',
    translation: 'igra',
    course_id: bosnian.id
)

Lesson.create!(
    name: 'author',
    img: 'https://blog.taxact.com/wp-content/uploads/tax-tips-self-publishing-authors.jpg',
    category: 'occupation',
    translation: 'autor',
    course_id: bosnian.id
)

Lesson.create!(
    name: 'chef',
    img: 'https://www.ecpi.edu/sites/default/files/CIV%20Sept%2026.png',
    category: 'occupation',
    translation: 'šef',
    course_id: bosnian.id
)

Lesson.create!(
    name: 'singer',
    img: 'https://i.pinimg.com/originals/8c/39/40/8c394047063494b590be4dbf1349d7fa.jpg',
    category: 'occupation',
    translation: 'pevačica',
    course_id: bosnian.id
)

Lesson.create!(
    name: 'gamer',
    img: 'https://static.bangkokpost.com/media/content/20200607/c1_3654792.jpg',
    category: 'occupation',
    translation: '游戏玩家',
    course_id: chinese.id
)

Lesson.create!(
    name: 'author',
    img: 'https://blog.taxact.com/wp-content/uploads/tax-tips-self-publishing-authors.jpg',
    category: 'occupation',
    translation: '作者',
    course_id: chinese.id
)

Lesson.create!(
    name: 'chef',
    img: 'https://www.ecpi.edu/sites/default/files/CIV%20Sept%2026.png',
    category: 'occupation',
    translation: '厨师',
    course_id: chinese.id
)

Lesson.create!(
    name: 'singer',
    img: 'https://i.pinimg.com/originals/8c/39/40/8c394047063494b590be4dbf1349d7fa.jpg',
    category: 'occupation',
    translation: '歌手',
    course_id: chinese.id
)

Lesson.create!(
    name: 'gamer',
    img: 'https://static.bangkokpost.com/media/content/20200607/c1_3654792.jpg',
    category: 'occupation',
    translation: 'اللاعب',
    course_id: arabic.id
)

Lesson.create!(
    name: 'author',
    img: 'https://blog.taxact.com/wp-content/uploads/tax-tips-self-publishing-authors.jpg',
    category: 'occupation',
    translation: 'مؤلف',
    course_id: arabic.id
)

Lesson.create!(
    name: 'chef',
    img: 'https://www.ecpi.edu/sites/default/files/CIV%20Sept%2026.png',
    category: 'occupation',
    translation: 'طاه',
    course_id: arabic.id
)

Lesson.create!(
    name: 'singer',
    img: 'https://i.pinimg.com/originals/8c/39/40/8c394047063494b590be4dbf1349d7fa.jpg',
    category: 'occupation',
    translation: 'مغني',
    course_id: arabic.id
)

Lesson.create!(
    name: "hello",
    img: "https://lh3.googleusercontent.com/6Adeoocj4FktXRmkcFY8j6sknDBK_eoCjsMv6EPJI_ZLhLUeAmZH_r5QxKBBa8xoxgni",
    category: "phrases",
    translation: '你好',
    course_id: chinese.id
)

Lesson.create!(
    name: "goodbye",
    img: "https://thumbs.gfycat.com/RepulsiveInnocentFairybluebird-size_restricted.gif",
    category: "phrases",
    translation: '再见',
    course_id: chinese.id
)

Lesson.create!(
    name: "Apple pie is life",
    img: "https://www.spendwithpennies.com/wp-content/uploads/2018/09/SpendWithPennies-Apple-Pie-Recipe-31-500x500.jpg",
    category: "phrases",
    translation: '我最喜欢吃苹果派',
    course_id: chinese.id
)

Lesson.create!(
    name: "Where is the bathroom",
    img: "https://cdn.lowgif.com/full/09557efa4b92a94d-rushing-gifs-on-giphy.gif",
    category: "phrases",
    translation: '洗手间在哪里？',
    course_id: chinese.id
)

Lesson.create!(
    name: "There is no bathroom here",
    img: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTFWvdGsjovXSZKl3FKs6xaE5UC4nZrsIBLIA&usqp=CAU",
    category: "phrases",
    translation: '我们没有洗手间',
    course_id: chinese.id
)

Lesson.create!(
    name: "What",
    img: "https://www.the-arcade.ie/wp-content/uploads/2015/11/shock-gif.gif",
    category: "phrases",
    translation: '什么',
    course_id: chinese.id
)

Lesson.create!(
    name: "Hello",
    img: "https://lh3.googleusercontent.com/6Adeoocj4FktXRmkcFY8j6sknDBK_eoCjsMv6EPJI_ZLhLUeAmZH_r5QxKBBa8xoxgni",
    category: "phrases",
    translation: 'zdravo',
    course_id: bosnian.id
)

Lesson.create!(
    name: "goodbye",
    img: "https://thumbs.gfycat.com/RepulsiveInnocentFairybluebird-size_restricted.gif",
    category: "phrases",
    translation: 'zbogom, zdravo',
    course_id: bosnian.id
)

Lesson.create!(
    name: "Where is the supermarket?",
    img: "https://www.hiregrowth.org/wp-content/uploads/2015/12/Job-Search-Cartoon.jpg",
    category: "phrases",
    translation: 'gdje je supermarket',
    course_id: bosnian.id
)

Lesson.create!(
    name: "It is on your left",
    img: "https://i.ytimg.com/vi/TLaIbioqflw/maxresdefault.jpg",
    category: "phrases",
    translation: 'to je s vaše lijeve strane',
    course_id: bosnian.id
)

Lesson.create!(
    name: "Thank you",
    img: "https://i.imgur.com/Ow9ydMP.gif",
    category: "phrases",
    translation: 'hvala ti',
    course_id: bosnian.id
)





