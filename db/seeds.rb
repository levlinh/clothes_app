User.create!(name: "Le Linh",
             email:
  "lelinh@gmail.com",
             phone_number: "0395784141",
             password: "123456",
             password_confirmation: "123456",
             role:1)
5.times do |i|
  User.create!(name: "Le Linh",
               email:
  "lelinh#{i}@gmail.com",
               phone_number: "0395784141",
               password: "123456",
               password_confirmation: "123456",
               role:0)
end
