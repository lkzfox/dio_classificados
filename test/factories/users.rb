FactoryBot.define do
    factory :user do
        name {"Fabrica"}
        sequence(:email) {|n| "email#{n}@teste.com"}
        password {"senha123"}
    end
end