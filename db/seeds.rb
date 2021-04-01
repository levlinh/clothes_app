Product.destroy_all
10.times do |i|
Product.create!([{
  name: "Ao so mi",
  price: "100000",
  image: "/images/shop_04.jpg",
  description: "The versatile Multi Pochette Accessoires is composed of a bag, a pouch, and a round coin purse, all made from pastel-colored Monogram Giant canvas. This hybrid bag features an adjustable jacquard strap with Louis Vuitton Malletier inscribed on it for shoulder or cross-body wear as well as a removable gold-color chain for hand and short-shoulder carry.",
  size: 1,
  quantity: 10
  }])
end
