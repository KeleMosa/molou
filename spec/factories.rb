FactoryGirl.define do
	factory :users do
		f_name "Michael"
		l_name "Hartl"
		email "michael@example.com"
		password "foobar"
		password confirmation "foobar"
		address "address"
		phone "phone"
	end
end