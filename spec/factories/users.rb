FactoryBot.define do
  factory :user do
    nickname {"furima"}
    email {"test@test"}
    password {"111111aaa"}
    password_confirmation {"111111aaa"}
    first_name {"りく"}
    last_name {"山田"}
    last_name_kana {"ヤマダ"}
    first_name_kana {"リク"}
    birthday {19990629}
  end
end