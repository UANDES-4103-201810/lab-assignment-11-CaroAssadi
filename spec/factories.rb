FactoryBot.define do

  factory :user do
    username "CaroAssadi"
    email "csassadi@miuandes.cl"
    password "123"
  end
  factory :message do
    user_id 1
    date "2017-05-05"
    content "blah blah"
  end
end