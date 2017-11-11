User.create!(name:  "Michael Jackson",
             email: "mj@example.com",
             password:              "foobar",
             password_confirmation: "foobar")

user = User.find(1)
user.machines.create!(typename: "create", cpu: "intel", memory: "256")
user.machines.create!(typename: "create", cpu: "amd", memory: "128")

