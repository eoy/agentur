# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :person do
    name "MyString"
    weight ""
    description "MyText"
    age 1
    phone "MyString"
    email "MyString"
  end
end
