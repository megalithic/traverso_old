Factory.define :user do |user|
	user.first_name							"Seth"
	user.last_name							"Messer"
	user.email									"seth@example.com"
	user.password								"foobar"
	user.password_confirmation	"foobar"
end

Factory.define :pack_list do |pack_list|
	pack_list.title							"My Pack List"
	pack_list.description				"This is my pack list for my next trip."
	pack_list.is_active					true
	pack_list.last_date_used		DateTime.now
end