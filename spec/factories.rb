Factory.define :user do |user|
  user.name                  "Michael Hartl"
  user.virtualPW             "foobar"
end

Factory.sequence :name do |n|
  "Person #{n}"
end

