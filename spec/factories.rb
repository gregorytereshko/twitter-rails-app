FactoryGirl.define do
  # factory :user do
  #   name 'Gregory Tereshko'
  #   email 'gregory.tereshko1@gmail.com'
  #   password 'foobar'
  #   password_confirmation 'foobar'
  # end
  factory :user do
    sequence(:name) { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com" }
    password 'foobar'
    password_confirmation 'foobar'

    factory :admin do
      admin true
    end
  end


end