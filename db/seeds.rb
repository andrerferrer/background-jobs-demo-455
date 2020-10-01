99.times do |x|
  User.create! email: "user@#{x}.com", password: 123456
end