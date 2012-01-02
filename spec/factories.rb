Factory.define :user do |user|
	user.first_name									"Seth"
	user.last_name									"Messer"
	user.username										"seth.messer"
	user.email											"seth@example.com"
	user.password										"foobar"
	user.password_confirmation			"foobar"
end

Factory.define :pack_list do |pack_list|
	pack_list.title									"My Pack List"
	pack_list.description						"This is my pack list for my next trip."
	pack_list.is_active							true
	pack_list.last_date_used				DateTime.now
end

Factory.define :pack_item_category do |pack_item_category|
	pack_item_category.title				"Clothing Category"
	pack_item_category.description 	"This is an optional description for a pack list category."
end

Factory.define :pack_item do |pack_item|
	pack_item.title									"Patagonia Capilene 3 Size M"
	pack_item.notes									"Fits a bit snug, but provides decent warmth."
	pack_item.quantity							1
	pack_item.weight								6.89
	pack_item.is_active							true
	pack_item.is_used								true
	pack_item.is_taken							true
end