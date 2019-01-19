# Role.destroy.all
# User.destroy.all

  roles = ["Donator", "Deliverer", "Receiver"]

  roles.each do |role|
    Role.create(name: "#{role}")
  end

  restaurants = ["Starbucks", "Pizza Hut", "Le Bernardin", "Pret A Manger", "Panera Bread", "Cosme"]

  # restaurants = {}

  restaurants.each do |restaurant|
    email = restaurant.split(" ").join("_")
    User.create(name: "#{restaurant}", email: "#{email}@village.com", password: "bluecheese", role: Role.find_by(name: "Donator"))
  end

  shelters = ["HRA Men's Shelter","New York City Rescue Mission", "Covenant House New York", "Nazareth Housing"]

  shelters.each do |shelter|
    email = shelter.split(" ").join("_")
    User.create(name: "#{shelter}", email: "#{email}@village.com", password: "bluecheese", role: Role.find_by(name: "Receiver"))
  end

  deliverers = ["Carson Rey", "Olivia Kasten", "Gregy Wedgy" , "Ry Ry"]

  deliverers.each do |deliverer|
    email = deliverer.split(" ").join("_")
    User.create(name: "#{deliverer}", email: "#{email}@village.com", password: "bluecheese", role: Role.find_by(name: "Deliverer"))
  end
