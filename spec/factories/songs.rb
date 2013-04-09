# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :song do
    album_id 1
    track 1
    title "MyString"
  end
end
