FactoryBot.define do
  factory :event do
    association :user
    event_name { "サッカーを観戦しよう" }
    description { "サッカーイベントです" }
    event_address { "東京都" }
    event_start_at { DateTime.now }
    event_end_at { DateTime.now.tomorrow }
    event_team { "Liverpool" }
    capacity { 5 }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/top-hero.png')) }
  end

  factory :event_params, class: Event do
    event_name { "プレミアリーグを観戦しよう" }
    description { "プレミアリーグイベントです" }
    event_address { "神奈川県" }
    event_start_at { DateTime.now }
    event_end_at { DateTime.now.tomorrow }
    event_team { "Chelsea" }
    capacity { 10 }
    image { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/top-hero.png')) }
  end
end
