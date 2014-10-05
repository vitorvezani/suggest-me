FactoryGirl.define do
	# This will guess the Usuario class
	factory :usuario do
		sequence(:email) { |n| "user#{n}@exemple.com" }
		username "user.name"
		password_confirmation "secreat"
		password "secreat"
		admin false
	end

	factory :admin, class: Usuario do
		sequence(:email) { |n| "admin#{n}@exemple.com" }
		username "admin.admin"
		password_confirmation "secreat"
		password "secreat"
		admin true
	end
end