decorator_job = {
	:name => "Allyse Groover",
	:address => "123 Street Sometown, ST 12345",
	:email => "allyse@groover.com",
	:phone_num => "123-456-7890",
	:fave_blue => "teal",
	:wallpaper_pref => "chevrons",
	:ombre => "fierce"
}

decorator_job[:fave_blue] = "aqua"
email = :email
p decorator_job[email]

p decorator_job[:name] + decorator_job[:address]


p decorator_job