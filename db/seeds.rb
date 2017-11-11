User.create!(name:  "Michael Jackson",
             email: "mj@example.com",
             password:              "foobar",
             password_confirmation: "foobar")

user = User.find(1)
user.machines.create!(type: "Created", cpu: "intel", memory: "256")
user.machines.create!(type: "Created", cpu: "amd", memory: "128")

