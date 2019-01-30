# Role.destroy.all
# User.destroy.all
    days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

    days.each do |day|
      Day.create(name: "#{day}")
    end

    roles = ["Donator", "Deliverer", "Receiver"]

    roles.each do |role|
      Role.create(name: "#{role}")
    end

    restaurants = [{name: "Starbucks", address: "80 Delancey St, New York, NY 10002" }, {name: "Pizza Hut", address: "2 Pennsylvania Plaza, New York, NY 10121"}, {name: "Le Bernardin", address: " 155 W 51st St, New York, NY 10019" },{name: "Pret A Manger", address: "50 Broadway, New York, NY 10004" },{name: "Panera Bread", address: "452 5th Ave, New York, NY 10018" },{name: "Cosme", address: "35 E 21st St, New York, NY 10010" }]

  restaurants.each do |restaurant|
    email = restaurant[:name].split(" ").join("_")
    User.create(name: "#{restaurant[:name]}", email: "#{email}@village.com", password: "bluecheese", address: restaurant[:address] , role: Role.find_by(name: "Donator"))
  end

   shelters = [{name: "HRA Men's Shelter", address: "80 Delancey St, New York, NY 10002" }, {name: "New York City Rescue Mission", address: "2 Pennsylvania Plaza, New York, NY 10121"}, {name: "Covenant House New York", address: " 155 W 51st St, New York, NY 10019" },{name: "Nazareth Housing", address: "50 Broadway, New York, NY 10004" },{name: "Samaritan Village", address: "225 E 53rd St, New York, NY 10022" }]

  shelters.each do |shelter|
    email = shelter[:name].split(" ").join("_")
    User.create(name: "#{shelter[:name]}", email: "#{email}@village.com", password: "bluecheese", address: shelter[:address], role: Role.find_by(name: "Receiver"))
  end

  deliverers = ["Carson Rey", "Olivia Kasten", "Gregy Wedgy" , "Ry Ry"]

  deliverers.each do |deliverer|
    email = deliverer.split(" ").join("_")
    User.create(name: "#{deliverer}", email: "#{email}@village.com", password: "bluecheese", role: Role.find_by(name: "Deliverer"))
  end
