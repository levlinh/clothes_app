User.create!(name: "Le Linh",
             email:
  "lelinh@gmail.com",
             phone: "0395784141",
             password: "123456",
             password_confirmation: "123456",
             role: 1)
5.times do |i|
  User.create!(name: "Le Linh",
               email:
  "lelinh#{i}@gmail.com",
               phone: "0395784141",
               password: "123456",
               password_confirmation: "123456",
               role: 0)
end

Category.create!(name: "Gender")
Category.create!(name: "Sale")
Category.create!(name: "Product")
Category.create!(name: "Men",
                id_parent: 1)
Category.create!(name: "Women",
                id_parent: 1)
Category.create!(name: "Bag",
                id_parent: 3)
Category.create!(name: "Sweather",
                id_parent: 3)
Category.create!(name: "Shoes",
                id_parent: 3)

10.times do |i|
  name = Faker::Name.name
  category_id = 5
  price = i * 100
  image = "/images/shop_03.jpg"
  discount = 15
  size = 1
  description = Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)
  quantity = i * 5
  Product.create!(
    category_id: category_id,
    name: name,
    price: price,
    image: image,
    discount: discount,
    size: size,
    description: description,
    quantity: quantity)
end
10.times do |i|
  name =  Faker::Name.name
  category_id = 4
  price = i * 100
  image = "/images/shop_04.jpg"
  discount = 15
  size = 2
  description = Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)
  quantity = i * 5
  Product.create!(name: name,
    category_id: category_id,
    price: price,
    image: image,
    discount: discount,
    size: size,
    description: description,
    quantity: quantity)
  end
