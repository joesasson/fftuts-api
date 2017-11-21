FactoryBot.define do
  factory :article do
    title { Faker::HitchhikersGuideToTheGalaxy.marvin_quote }
    link { Faker::Internet.url }
    date { Date.today }
  end
end
