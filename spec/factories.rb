FactoryGirl.define do
  factory :genre do
    name "MyString"
  end
  factory :instrument do
    name "MyString"
  end
  factory :format do
    name "MyString"
  end
  factory :track do
    title "MyString"
    album_id 1
    length 1
  end
  factory :album_image do
    album_id 1
    cover_image "MyString"
    backcover_image "MyString"
    insert_image_1 "MyString"
    insert_image_2 "MyString"
    insert_image_3 "MyString"
    record_image "MyString"
  end
  factory :release do
    album_id 1
    format "MyString"
    label "MyString"
  end
  factory :album do
    artist_id 1
    title "MyString"
    release_date 1
    genre "MyString"
  end
  factory :member do
    artist_id 1
    first_name "MyString"
    last_name "MyString"
    instrument_1 "MyString"
    instrument_2 "MyString"
    instrument_3 "MyString"
  end
  factory :area do
    name "MyString"
  end
  factory :artist_image do
    artist_id 1
    image_1 "MyString"
    image_2 "MyString"
    image_3 "MyString"
    image_4 "MyString"
    image_5 "MyString"
  end
  factory :artist do
    name "MyString"
    bio "MyString"
    area_id 1
    start_year 1
    end_year 1
  end
  factory :user do
    
  end
end
