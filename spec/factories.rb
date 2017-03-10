FactoryGirl.define do
  factory :perspective do
    sequence(:name) { |i| "perspective#{i}" }
  end

  factory :story do 
    sequence(:title) { |i| "story#{i}" }
    perspective
  end

  factory :story_text do 
    sequence(:body) { |i| "story_text#{i}" }
  end

  factory :comment do 
    sequence(:body) { |i| "comment#{i}" }
  end
end
