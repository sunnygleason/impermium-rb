
require 'rubygems'
require 'impermium'
require 'silly_putty/clients/auto_detect'
require 'pp'

c = Impermium::Client.new("api.impermium.com", 80, ENV["IMPERMIUM_API_TOKEN"])
u = Impermium::UserAccount.new("DELETE_ME_003", "10.10.10.10")

u.email_identity = "nobody@nowhere.com"
u.first_name = "I. Dont"
u.last_name  = "Exist"
u.content    = "This is nonsense content"

pp c.post_user_account(u)

