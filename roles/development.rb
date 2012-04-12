name("development")
description("Database Server, Web Server, Git, Ruby, Rails")

run_list(
  "recipe[apt]",
  "recipe[build-essential]",
  "recipe[git]",
  "recipe[apache2]",
  "recipe[apache2::mod_ssl]",
  "recipe[passenger_apache2::mod_rails]",
  "recipe[mysql::server]"
)

override_attributes({
  :mysql => {
    :server_root_password => "password"
  }
})
