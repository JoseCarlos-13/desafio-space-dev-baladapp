FactoryBot.define do
  factory :launch do
    url { "MyString" }
    slug { "MyString" }
    name { "MyString" }
    status { 1 }
    net { "2022-12-30 18:41:31" }
    window_end { "2022-12-30 18:41:31" }
    window_start { "2022-12-30 18:41:31" }
    inhold { false }
    tbdtime { false }
    tbddate { false }
    probability { 1 }
    holdreason { "MyString" }
    failreason { "MyString" }
    hashtag { "MyString" }
    mission { "MyString" }
    webcast_live { false }
    infographic { "MyString" }
    program { "" }
  end
end
