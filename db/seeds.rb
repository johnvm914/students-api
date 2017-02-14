100.times do
  Student.create(first_name: Faker::Name.first_name,
                 last_name: Faker::Name.last_name,
                 age: Faker::Number.between(18, 25),
                 school: Faker::Educator.university)
end